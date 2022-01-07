
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ipv6_rt_hdr {int type; } ;
struct in6_addr {int dummy; } ;






 int ipv6_push_rthdr0 (struct sk_buff*,int *,struct ipv6_rt_hdr*,struct in6_addr**,struct in6_addr*) ;
 int ipv6_push_rthdr4 (struct sk_buff*,int *,struct ipv6_rt_hdr*,struct in6_addr**,struct in6_addr*) ;

__attribute__((used)) static void ipv6_push_rthdr(struct sk_buff *skb, u8 *proto,
       struct ipv6_rt_hdr *opt,
       struct in6_addr **addr_p, struct in6_addr *saddr)
{
 switch (opt->type) {
 case 130:
 case 131:
 case 129:
  ipv6_push_rthdr0(skb, proto, opt, addr_p, saddr);
  break;
 case 128:
  ipv6_push_rthdr4(skb, proto, opt, addr_p, saddr);
  break;
 default:
  break;
 }
}
