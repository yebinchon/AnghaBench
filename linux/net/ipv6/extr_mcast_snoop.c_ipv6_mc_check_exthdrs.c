
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
typedef int __be16 ;


 int EINVAL ;
 int ENOMSG ;
 scalar_t__ IPPROTO_HOPOPTS ;
 scalar_t__ IPPROTO_ICMPV6 ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,scalar_t__*,int *) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int) ;

__attribute__((used)) static int ipv6_mc_check_exthdrs(struct sk_buff *skb)
{
 const struct ipv6hdr *ip6h;
 int offset;
 u8 nexthdr;
 __be16 frag_off;

 ip6h = ipv6_hdr(skb);

 if (ip6h->nexthdr != IPPROTO_HOPOPTS)
  return -ENOMSG;

 nexthdr = ip6h->nexthdr;
 offset = skb_network_offset(skb) + sizeof(*ip6h);
 offset = ipv6_skip_exthdr(skb, offset, &nexthdr, &frag_off);

 if (offset < 0)
  return -EINVAL;

 if (nexthdr != IPPROTO_ICMPV6)
  return -ENOMSG;

 skb_set_transport_header(skb, offset);

 return 0;
}
