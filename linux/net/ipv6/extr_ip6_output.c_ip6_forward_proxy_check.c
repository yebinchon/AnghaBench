
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {scalar_t__ nexthdr; int daddr; } ;
struct icmp6hdr {int icmp6_type; } ;
typedef int __be16 ;


 scalar_t__ IPPROTO_ICMPV6 ;
 int IPV6_ADDR_LINKLOCAL ;





 int dst_link_failure (struct sk_buff*) ;
 int ipv6_addr_type (int *) ;
 scalar_t__ ipv6_ext_hdr (scalar_t__) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,scalar_t__*,int *) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;

__attribute__((used)) static int ip6_forward_proxy_check(struct sk_buff *skb)
{
 struct ipv6hdr *hdr = ipv6_hdr(skb);
 u8 nexthdr = hdr->nexthdr;
 __be16 frag_off;
 int offset;

 if (ipv6_ext_hdr(nexthdr)) {
  offset = ipv6_skip_exthdr(skb, sizeof(*hdr), &nexthdr, &frag_off);
  if (offset < 0)
   return 0;
 } else
  offset = sizeof(struct ipv6hdr);

 if (nexthdr == IPPROTO_ICMPV6) {
  struct icmp6hdr *icmp6;

  if (!pskb_may_pull(skb, (skb_network_header(skb) +
      offset + 1 - skb->data)))
   return 0;

  icmp6 = (struct icmp6hdr *)(skb_network_header(skb) + offset);

  switch (icmp6->icmp6_type) {
  case 128:
  case 129:
  case 131:
  case 132:
  case 130:




   return 1;
  default:
   break;
  }
 }






 if (ipv6_addr_type(&hdr->daddr) & IPV6_ADDR_LINKLOCAL) {
  dst_link_failure(skb);
  return -1;
 }

 return 0;
}
