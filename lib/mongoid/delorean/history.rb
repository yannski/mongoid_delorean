module Mongoid
  module Delorean
    class History

      include Mongoid::Document
      include Mongoid::Timestamps

      field :original_class, type: String
      field :original_class_id, type: String
      field :version, type: Integer, default: 0
      field :altered_attributes, type: Hash, default: {}
      field :full_attributes, type: Hash, default: {}
      field :reason, type: String
      field :is_published, type: Boolean, default: false

      belongs_to :originator, :class_name => "User" #Mongoid::Delorean::History.originator_class_name

    end
  end
end
