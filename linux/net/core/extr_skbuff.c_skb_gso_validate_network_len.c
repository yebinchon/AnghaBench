
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_gso_network_seglen (struct sk_buff const*) ;
 int skb_gso_size_check (struct sk_buff const*,int ,unsigned int) ;

bool skb_gso_validate_network_len(const struct sk_buff *skb, unsigned int mtu)
{
 return skb_gso_size_check(skb, skb_gso_network_seglen(skb), mtu);
}
