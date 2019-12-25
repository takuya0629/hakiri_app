Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: %w!new create destroy!
  resources :users do
    collection do
      post :confirm
    end
  end
end
#   get 'users', to: 'users#index'
#   get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
#   get 'users/:id', to: 'users#show', as: 'user'
#   patch 'users/:id', to: 'users#update'
#   put 'users/:id', to: 'users#update'
# end
