
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {scalar_t__ check; } ;
struct sk_buff {int ip_summed; int csum; } ;
struct iphdr {int daddr; int saddr; } ;
struct TYPE_2__ {int gso_type; } ;


 int CHECKSUM_NONE ;
 int SKB_GSO_TCPV4 ;
 int csum_partial (struct tcphdr*,unsigned int,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct tcphdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;
 scalar_t__ tcp_v4_check (unsigned int,int ,int ,int ) ;

__attribute__((used)) static int tcf_csum_ipv4_tcp(struct sk_buff *skb, unsigned int ihl,
        unsigned int ipl)
{
 struct tcphdr *tcph;
 const struct iphdr *iph;

 if (skb_is_gso(skb) && skb_shinfo(skb)->gso_type & SKB_GSO_TCPV4)
  return 1;

 tcph = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*tcph));
 if (tcph == ((void*)0))
  return 0;

 iph = ip_hdr(skb);
 tcph->check = 0;
 skb->csum = csum_partial(tcph, ipl - ihl, 0);
 tcph->check = tcp_v4_check(ipl - ihl,
       iph->saddr, iph->daddr, skb->csum);

 skb->ip_summed = CHECKSUM_NONE;

 return 1;
}
