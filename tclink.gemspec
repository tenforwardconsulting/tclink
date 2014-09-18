# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name           = "tclink"
  spec.version        = "4.0.1"
  spec.summary        = "TCLink Trust Commerce link"
  spec.description    = "Trust Commerce connectivity layer"
  spec.homepage       = "http://trustcommerce.com"
  spec.email          = "techsupport@trustcommerce.com"
  spec.license        = "LGPL-2.1"
  spec.authors        = ["Brett Samson", "TrustCommerce"]

  spec.files          = `git ls-files -z`.split("\x0")
  spec.executables    = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})

  spec.extensions     = ["ext/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
