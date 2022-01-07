
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int ip_summed; } ;
struct iphdr {int ihl; scalar_t__ protocol; int saddr; int daddr; } ;
struct ip_vs_protocol {int dummy; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_3__ {int ip; } ;
struct ip_vs_conn {int dport; int vport; TYPE_2__ daddr; TYPE_1__ vaddr; } ;
struct icmphdr {scalar_t__ checksum; } ;
typedef int __be16 ;


 int AF_INET ;
 int CHECKSUM_UNNECESSARY ;
 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IP_VS_DBG_PKT (int,int ,struct ip_vs_protocol*,struct sk_buff*,int,char*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 scalar_t__ ip_vs_checksum_complete (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;

void ip_vs_nat_icmp(struct sk_buff *skb, struct ip_vs_protocol *pp,
      struct ip_vs_conn *cp, int inout)
{
 struct iphdr *iph = ip_hdr(skb);
 unsigned int icmp_offset = iph->ihl*4;
 struct icmphdr *icmph = (struct icmphdr *)(skb_network_header(skb) +
            icmp_offset);
 struct iphdr *ciph = (struct iphdr *)(icmph + 1);

 if (inout) {
  iph->saddr = cp->vaddr.ip;
  ip_send_check(iph);
  ciph->daddr = cp->vaddr.ip;
  ip_send_check(ciph);
 } else {
  iph->daddr = cp->daddr.ip;
  ip_send_check(iph);
  ciph->saddr = cp->daddr.ip;
  ip_send_check(ciph);
 }


 if (IPPROTO_TCP == ciph->protocol || IPPROTO_UDP == ciph->protocol ||
     IPPROTO_SCTP == ciph->protocol) {
  __be16 *ports = (void *)ciph + ciph->ihl*4;

  if (inout)
   ports[1] = cp->vport;
  else
   ports[0] = cp->dport;
 }


 icmph->checksum = 0;
 icmph->checksum = ip_vs_checksum_complete(skb, icmp_offset);
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 if (inout)
  IP_VS_DBG_PKT(11, AF_INET, pp, skb, (void *)ciph - (void *)iph,
   "Forwarding altered outgoing ICMP");
 else
  IP_VS_DBG_PKT(11, AF_INET, pp, skb, (void *)ciph - (void *)iph,
   "Forwarding altered incoming ICMP");
}
