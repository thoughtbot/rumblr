class Article < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  belongs_to :user

  def previously_changed?
    previous_changes.empty?
  end
end
