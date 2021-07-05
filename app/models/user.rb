class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets, dependent: :destroy
  attachment :profile_image, destroy: false
  enum rank: { 非公開: 0, ブロンズ: 1, シルバー: 2, ゴールド: 3, プラチナ: 4, ダイヤ: 5, マスター: 6, プレデター: 7 }
end
