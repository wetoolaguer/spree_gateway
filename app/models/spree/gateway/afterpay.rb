#TODO: This should go to active_merchant
module ActiveMerchant::Billing
  class Afterpay
  end
end

module Spree
  class Gateway::Afterpay < Gateway
    # Raises error without this
    # Error: You must implement provider_class method for this gateway.
    def provider_class
      ActiveMerchant::Billing::Afterpay
    end

    def purchase(money, creditcard, gateway_options)
      ActiveMerchant::Billing::Response.new(true, '')
    end

    def authorize(money, creditcard, gateway_options)
      ActiveMerchant::Billing::Response.new(true, '')
    end

    def capture(money, response_code, gateway_options)
      ActiveMerchant::Billing::Response.new(true, '')
    end
  end
end
