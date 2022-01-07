
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int data; int len; } ;
struct ipv6hdr {int nexthdr; } ;
typedef int __be16 ;


 int htons (int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr (struct sk_buff*,int *,int *,int*) ;
 scalar_t__ nf_ip6_checksum (struct sk_buff*,int,int,int ) ;
 int nf_reject_verify_csum (int ) ;
 scalar_t__ skb_csum_unnecessary (struct sk_buff*) ;

__attribute__((used)) static bool reject6_csum_ok(struct sk_buff *skb, int hook)
{
 const struct ipv6hdr *ip6h = ipv6_hdr(skb);
 int thoff;
 __be16 fo;
 u8 proto;

 if (skb_csum_unnecessary(skb))
  return 1;

 proto = ip6h->nexthdr;
 thoff = ipv6_skip_exthdr(skb, ((u8 *)(ip6h + 1) - skb->data), &proto, &fo);

 if (thoff < 0 || thoff >= skb->len || (fo & htons(~0x7)) != 0)
  return 0;

 if (!nf_reject_verify_csum(proto))
  return 1;

 return nf_ip6_checksum(skb, hook, thoff, proto) == 0;
}
