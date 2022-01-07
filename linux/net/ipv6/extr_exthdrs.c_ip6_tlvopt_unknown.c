
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int daddr; } ;


 int ICMPV6_UNK_OPTION ;
 int icmpv6_param_prob (struct sk_buff*,int ,int) ;
 int ipv6_addr_is_multicast (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int* skb_network_header (struct sk_buff*) ;

__attribute__((used)) static bool ip6_tlvopt_unknown(struct sk_buff *skb, int optoff,
          bool disallow_unknowns)
{
 if (disallow_unknowns) {







  goto drop;
 }

 switch ((skb_network_header(skb)[optoff] & 0xC0) >> 6) {
 case 0:
  return 1;

 case 1:
  break;

 case 3:



  if (ipv6_addr_is_multicast(&ipv6_hdr(skb)->daddr))
   break;

 case 2:
  icmpv6_param_prob(skb, ICMPV6_UNK_OPTION, optoff);
  return 0;
 }

drop:
 kfree_skb(skb);
 return 0;
}
