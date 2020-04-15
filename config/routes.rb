Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quotes, only: [:index, :show, :create]
  get 'quotes/random', to: 'quotes#random'
  get 'themes/:name', to: 'themes#name' 
  resources :themes, only: [:index]

end
