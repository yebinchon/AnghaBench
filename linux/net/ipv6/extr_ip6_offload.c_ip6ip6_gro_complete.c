
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int encapsulation; } ;
struct TYPE_2__ {int gso_type; } ;


 int SKB_GSO_IPXIP6 ;
 int ipv6_gro_complete (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int ip6ip6_gro_complete(struct sk_buff *skb, int nhoff)
{
 skb->encapsulation = 1;
 skb_shinfo(skb)->gso_type |= SKB_GSO_IPXIP6;
 return ipv6_gro_complete(skb, nhoff);
}
