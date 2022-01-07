
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ipv6_txoptions {scalar_t__ hopopt; scalar_t__ dst0opt; scalar_t__ srcrt; } ;
struct in6_addr {int dummy; } ;


 int NEXTHDR_DEST ;
 int NEXTHDR_HOP ;
 int ipv6_push_exthdr (struct sk_buff*,int *,int ,scalar_t__) ;
 int ipv6_push_rthdr (struct sk_buff*,int *,scalar_t__,struct in6_addr**,struct in6_addr*) ;

void ipv6_push_nfrag_opts(struct sk_buff *skb, struct ipv6_txoptions *opt,
     u8 *proto,
     struct in6_addr **daddr, struct in6_addr *saddr)
{
 if (opt->srcrt) {
  ipv6_push_rthdr(skb, proto, opt->srcrt, daddr, saddr);




  if (opt->dst0opt)
   ipv6_push_exthdr(skb, proto, NEXTHDR_DEST, opt->dst0opt);
 }
 if (opt->hopopt)
  ipv6_push_exthdr(skb, proto, NEXTHDR_HOP, opt->hopopt);
}
