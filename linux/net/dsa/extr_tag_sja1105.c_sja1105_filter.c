
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dsa_ptr; } ;


 int dsa_port_is_vlan_filtering (int ) ;
 scalar_t__ sja1105_is_link_local (struct sk_buff const*) ;
 scalar_t__ sja1105_is_meta_frame (struct sk_buff const*) ;

__attribute__((used)) static bool sja1105_filter(const struct sk_buff *skb, struct net_device *dev)
{
 if (!dsa_port_is_vlan_filtering(dev->dsa_ptr))
  return 1;
 if (sja1105_is_link_local(skb))
  return 1;
 if (sja1105_is_meta_frame(skb))
  return 1;
 return 0;
}
