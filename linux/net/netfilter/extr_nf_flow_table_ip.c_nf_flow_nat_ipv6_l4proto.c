
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipv6hdr {int nexthdr; } ;
struct in6_addr {int dummy; } ;




 int NF_DROP ;
 int nf_flow_nat_ipv6_tcp (struct sk_buff*,unsigned int,struct in6_addr*,struct in6_addr*) ;
 int nf_flow_nat_ipv6_udp (struct sk_buff*,unsigned int,struct in6_addr*,struct in6_addr*) ;

__attribute__((used)) static int nf_flow_nat_ipv6_l4proto(struct sk_buff *skb, struct ipv6hdr *ip6h,
        unsigned int thoff, struct in6_addr *addr,
        struct in6_addr *new_addr)
{
 switch (ip6h->nexthdr) {
 case 129:
  if (nf_flow_nat_ipv6_tcp(skb, thoff, addr, new_addr) < 0)
   return NF_DROP;
  break;
 case 128:
  if (nf_flow_nat_ipv6_udp(skb, thoff, addr, new_addr) < 0)
   return NF_DROP;
  break;
 }

 return 0;
}
