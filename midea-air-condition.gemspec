# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name = 'midea-air-condition'
  s.version = MideaAirCondition::VERSION
  s.summary = 'Ruby gem to communicate with Midea AirCondition systems'
  s.description = 'API client for Midea AC systems'
  s.authors = ['Balazs Nadasdi']
  s.email = 'balazs.nadasdi@cheppers.com'
  s.homepage = ''
  s.license = 'MIT'

  s.required_ruby_version = ::Gem::Requirement.new('>= 2.4')

  s.files = Dir['LICENSE', 'README.md', 'lib/**/*.rb']
  s.executables << 'midea-ac'
  s.test_files = Dir['spec/**/*']

  s.require_path = 'lib'

  s.add_dependency 'json', '~> 2.1.0'
  s.add_dependency 'openssl'
  s.add_dependency 'thor', '~> 0.20.0'

  s.add_development_dependency 'rake', '>= 12.0'
  s.add_development_dependency 'rdoc', '>= 5.1'
  s.add_development_dependency 'rspec', '>= 3.5'
  s.add_development_dependency 'rubocop', '>= 0.48'
  s.add_development_dependency 'sinatra', '>= 1.4'
  s.add_development_dependency 'webmock', '>= 3.0'
end
