Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  resources :uses, only: [:show, :edit, :update]

  resources :meshiterro

end