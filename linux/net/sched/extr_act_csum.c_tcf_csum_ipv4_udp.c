
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct udphdr {scalar_t__ check; int len; } ;
struct sk_buff {int ip_summed; void* csum; } ;
struct iphdr {int protocol; int daddr; int saddr; } ;
struct TYPE_2__ {int gso_type; } ;


 int CHECKSUM_NONE ;
 scalar_t__ CSUM_MANGLED_0 ;
 int SKB_GSO_UDP ;
 void* csum_partial (struct udphdr*,int,int ) ;
 scalar_t__ csum_tcpudp_magic (int ,int ,int,int ,void*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct udphdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int tcf_csum_ipv4_udp(struct sk_buff *skb, unsigned int ihl,
        unsigned int ipl, int udplite)
{
 struct udphdr *udph;
 const struct iphdr *iph;
 u16 ul;

 if (skb_is_gso(skb) && skb_shinfo(skb)->gso_type & SKB_GSO_UDP)
  return 1;
 udph = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*udph));
 if (udph == ((void*)0))
  return 0;

 iph = ip_hdr(skb);
 ul = ntohs(udph->len);

 if (udplite || udph->check) {

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

  udph->check = csum_tcpudp_magic(iph->saddr, iph->daddr,
      ul, iph->protocol,
      skb->csum);

  if (!udph->check)
   udph->check = CSUM_MANGLED_0;
 }

 skb->ip_summed = CHECKSUM_NONE;

ignore_obscure_skb:
 return 1;
}
