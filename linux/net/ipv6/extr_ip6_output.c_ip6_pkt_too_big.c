
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; scalar_t__ ignore_df; } ;
struct TYPE_2__ {unsigned int frag_max_size; } ;


 TYPE_1__* IP6CB (struct sk_buff const*) ;
 scalar_t__ skb_gso_validate_network_len (struct sk_buff const*,unsigned int) ;
 scalar_t__ skb_is_gso (struct sk_buff const*) ;

__attribute__((used)) static bool ip6_pkt_too_big(const struct sk_buff *skb, unsigned int mtu)
{
 if (skb->len <= mtu)
  return 0;


 if (IP6CB(skb)->frag_max_size && IP6CB(skb)->frag_max_size > mtu)
  return 1;

 if (skb->ignore_df)
  return 0;

 if (skb_is_gso(skb) && skb_gso_validate_network_len(skb, mtu))
  return 0;

 return 1;
}
