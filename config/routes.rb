Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"

  resources :post_images, only: [:new, :creste, :index, :show]

  get "/homes/about" => "homes#about", as: "about"
end
