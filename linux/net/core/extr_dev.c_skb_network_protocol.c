
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_TEB ;
 scalar_t__ __vlan_get_protocol (struct sk_buff*,scalar_t__,int*) ;
 scalar_t__ htons (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__be16 skb_network_protocol(struct sk_buff *skb, int *depth)
{
 __be16 type = skb->protocol;


 if (type == htons(ETH_P_TEB)) {
  struct ethhdr *eth;

  if (unlikely(!pskb_may_pull(skb, sizeof(struct ethhdr))))
   return 0;

  eth = (struct ethhdr *)skb->data;
  type = eth->h_proto;
 }

 return __vlan_get_protocol(skb, type, depth);
}
