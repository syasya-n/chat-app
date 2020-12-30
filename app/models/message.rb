class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :content, presence: true, unless: :was_attached?
  has_one_attached :image

  def was_attached?
    self.image.attached?
  end
end
