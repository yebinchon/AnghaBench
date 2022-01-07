
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {scalar_t__ check; int dest; } ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; int csum; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {unsigned int len; scalar_t__ fragoffs; } ;
struct TYPE_5__ {int ip; int in6; } ;
struct TYPE_4__ {int ip; int in6; } ;
struct ip_vs_conn {scalar_t__ af; int protocol; TYPE_2__ daddr; TYPE_1__ caddr; int * app; int dport; int vport; int vaddr; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ CHECKSUM_COMPLETE ;
 void* CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 void* CHECKSUM_UNNECESSARY ;
 scalar_t__ csum_ipv6_magic (int *,int *,unsigned int,int ,int ) ;
 scalar_t__ csum_tcpudp_magic (int ,int ,unsigned int,int ,int ) ;
 int htons (unsigned int) ;
 int ip_vs_app_pkt_in (struct ip_vs_conn*,struct sk_buff*,struct ip_vs_iphdr*) ;
 int skb_checksum (struct sk_buff*,unsigned int,unsigned int,int ) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int tcp_csum_check (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ;
 int tcp_fast_csum_update (scalar_t__,struct tcphdr*,int *,TYPE_2__*,int ,int ) ;
 int tcp_partial_csum_update (scalar_t__,struct tcphdr*,int *,TYPE_2__*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
tcp_dnat_handler(struct sk_buff *skb, struct ip_vs_protocol *pp,
   struct ip_vs_conn *cp, struct ip_vs_iphdr *iph)
{
 struct tcphdr *tcph;
 unsigned int tcphoff = iph->len;
 bool payload_csum = 0;
 int oldlen;





 oldlen = skb->len - tcphoff;


 if (skb_ensure_writable(skb, tcphoff + sizeof(*tcph)))
  return 0;

 if (unlikely(cp->app != ((void*)0))) {
  int ret;


  if (!tcp_csum_check(cp->af, skb, pp))
   return 0;





  if (!(ret = ip_vs_app_pkt_in(cp, skb, iph)))
   return 0;

  if (ret == 1)
   oldlen = skb->len - tcphoff;
  else
   payload_csum = 1;
 }

 tcph = (void *)skb_network_header(skb) + tcphoff;
 tcph->dest = cp->dport;




 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  tcp_partial_csum_update(cp->af, tcph, &cp->vaddr, &cp->daddr,
     htons(oldlen),
     htons(skb->len - tcphoff));
 } else if (!payload_csum) {

  tcp_fast_csum_update(cp->af, tcph, &cp->vaddr, &cp->daddr,
         cp->vport, cp->dport);
  if (skb->ip_summed == CHECKSUM_COMPLETE)
   skb->ip_summed = cp->app ?
      CHECKSUM_UNNECESSARY : CHECKSUM_NONE;
 } else {

  tcph->check = 0;
  skb->csum = skb_checksum(skb, tcphoff, skb->len - tcphoff, 0);
   tcph->check = csum_tcpudp_magic(cp->caddr.ip,
       cp->daddr.ip,
       skb->len - tcphoff,
       cp->protocol,
       skb->csum);
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 }
 return 1;
}
