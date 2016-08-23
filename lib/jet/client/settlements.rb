require 'rest-client'

class Jet::Client::Settlements
  def initialize(client)
    @client = client
  end

  def days(days)
    @client.rest_get_with_token("/settlement/#{days}")
  end

  def get_report(settlement_id)
    @client.rest_get_with_token("/settlement/report/#{settlement_id}")
  end

  def get_report_for_orders(settlement_id)
    @client.rest_get_with_token("/settlement/report/#{settlement_id}/orders")
  end

  def get_report_for_returns(settlement_id)
    @client.rest_get_with_token("/settlement/report/#{settlement_id}/returns")
  end
end
