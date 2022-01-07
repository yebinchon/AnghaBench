
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int tos; } ;


 scalar_t__ INET_ECN_is_ce (int ) ;
 int IP6_ECN_set_ce (struct sk_buff*,struct ipv6hdr*) ;
 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 struct ipv6hdr* ipipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static void ipip6_ecn_decapsulate(struct sk_buff *skb)
{
 struct ipv6hdr *inner_iph = ipipv6_hdr(skb);

 if (INET_ECN_is_ce(XFRM_MODE_SKB_CB(skb)->tos))
  IP6_ECN_set_ce(skb, inner_iph);
}
