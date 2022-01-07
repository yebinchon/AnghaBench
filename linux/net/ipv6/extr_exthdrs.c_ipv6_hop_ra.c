
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ra; int flags; } ;


 TYPE_1__* IP6CB (struct sk_buff*) ;
 int IP6SKB_ROUTERALERT ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int *,unsigned char const*,int) ;
 int net_dbg_ratelimited (char*,unsigned char const) ;
 unsigned char* skb_network_header (struct sk_buff*) ;

__attribute__((used)) static bool ipv6_hop_ra(struct sk_buff *skb, int optoff)
{
 const unsigned char *nh = skb_network_header(skb);

 if (nh[optoff + 1] == 2) {
  IP6CB(skb)->flags |= IP6SKB_ROUTERALERT;
  memcpy(&IP6CB(skb)->ra, nh + optoff + 2, sizeof(IP6CB(skb)->ra));
  return 1;
 }
 net_dbg_ratelimited("ipv6_hop_ra: wrong RA length %d\n",
       nh[optoff + 1]);
 kfree_skb(skb);
 return 0;
}
