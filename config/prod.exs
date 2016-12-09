use Mix.Config

config :meta_dashboard, MetaDashboard.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "travis-meta-dashboard.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info
