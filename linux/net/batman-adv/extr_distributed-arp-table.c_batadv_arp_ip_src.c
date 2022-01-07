
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __be32 ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ batadv_arp_hw_src (struct sk_buff*,int) ;

__attribute__((used)) static __be32 batadv_arp_ip_src(struct sk_buff *skb, int hdr_size)
{
 return *(__be32 *)(batadv_arp_hw_src(skb, hdr_size) + ETH_ALEN);
}
