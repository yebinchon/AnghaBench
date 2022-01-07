
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 scalar_t__ skb_gso_validate_network_len (struct sk_buff const*,unsigned int) ;
 scalar_t__ skb_is_gso (struct sk_buff const*) ;

bool mpls_pkt_too_big(const struct sk_buff *skb, unsigned int mtu)
{
 if (skb->len <= mtu)
  return 0;

 if (skb_is_gso(skb) && skb_gso_validate_network_len(skb, mtu))
  return 0;

 return 1;
}
