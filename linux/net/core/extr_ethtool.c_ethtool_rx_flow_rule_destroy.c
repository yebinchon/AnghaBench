
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_rx_flow_rule {struct ethtool_rx_flow_rule* rule; } ;


 int kfree (struct ethtool_rx_flow_rule*) ;

void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
{
 kfree(flow->rule);
 kfree(flow);
}
