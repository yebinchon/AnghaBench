
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int csum; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct icmp6hdr {scalar_t__ icmp6_cksum; } ;


 int CHECKSUM_NONE ;
 int IPPROTO_ICMPV6 ;
 scalar_t__ csum_ipv6_magic (int *,int *,unsigned int,int ,int ) ;
 int csum_partial (struct icmp6hdr*,unsigned int,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 struct icmp6hdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int tcf_csum_ipv6_icmp(struct sk_buff *skb, unsigned int ihl,
         unsigned int ipl)
{
 struct icmp6hdr *icmp6h;
 const struct ipv6hdr *ip6h;

 icmp6h = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*icmp6h));
 if (icmp6h == ((void*)0))
  return 0;

 ip6h = ipv6_hdr(skb);
 icmp6h->icmp6_cksum = 0;
 skb->csum = csum_partial(icmp6h, ipl - ihl, 0);
 icmp6h->icmp6_cksum = csum_ipv6_magic(&ip6h->saddr, &ip6h->daddr,
           ipl - ihl, IPPROTO_ICMPV6,
           skb->csum);

 skb->ip_summed = CHECKSUM_NONE;

 return 1;
}
