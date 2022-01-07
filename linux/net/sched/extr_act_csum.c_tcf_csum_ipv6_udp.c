
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct udphdr {scalar_t__ check; int len; } ;
struct sk_buff {int ip_summed; void* csum; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct TYPE_2__ {int gso_type; } ;


 int CHECKSUM_NONE ;
 scalar_t__ CSUM_MANGLED_0 ;
 int IPPROTO_UDP ;
 int IPPROTO_UDPLITE ;
 int SKB_GSO_UDP ;
 scalar_t__ csum_ipv6_magic (int *,int *,int,int ,void*) ;
 void* csum_partial (struct udphdr*,int,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct udphdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int tcf_csum_ipv6_udp(struct sk_buff *skb, unsigned int ihl,
        unsigned int ipl, int udplite)
{
 struct udphdr *udph;
 const struct ipv6hdr *ip6h;
 u16 ul;

 if (skb_is_gso(skb) && skb_shinfo(skb)->gso_type & SKB_GSO_UDP)
  return 1;
 udph = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*udph));
 if (udph == ((void*)0))
  return 0;

 ip6h = ipv6_hdr(skb);
 ul = ntohs(udph->len);

 udph->check = 0;

 if (udplite) {
  if (ul == 0)
   skb->csum = csum_partial(udph, ipl - ihl, 0);

  else if ((ul >= sizeof(*udph)) && (ul <= ipl - ihl))
   skb->csum = csum_partial(udph, ul, 0);

  else
   goto ignore_obscure_skb;
 } else {
  if (ul != ipl - ihl)
   goto ignore_obscure_skb;

  skb->csum = csum_partial(udph, ul, 0);
 }

 udph->check = csum_ipv6_magic(&ip6h->saddr, &ip6h->daddr, ul,
          udplite ? IPPROTO_UDPLITE : IPPROTO_UDP,
          skb->csum);

 if (!udph->check)
  udph->check = CSUM_MANGLED_0;

 skb->ip_summed = CHECKSUM_NONE;

ignore_obscure_skb:
 return 1;
}
