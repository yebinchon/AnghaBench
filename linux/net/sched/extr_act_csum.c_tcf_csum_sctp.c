
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ csum_not_inet; int ip_summed; } ;
struct sctphdr {int checksum; } ;


 int CHECKSUM_NONE ;
 int sctp_compute_cksum (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_is_gso_sctp (struct sk_buff*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 struct sctphdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int tcf_csum_sctp(struct sk_buff *skb, unsigned int ihl,
    unsigned int ipl)
{
 struct sctphdr *sctph;

 if (skb_is_gso(skb) && skb_is_gso_sctp(skb))
  return 1;

 sctph = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*sctph));
 if (!sctph)
  return 0;

 sctph->checksum = sctp_compute_cksum(skb,
          skb_network_offset(skb) + ihl);
 skb->ip_summed = CHECKSUM_NONE;
 skb->csum_not_inet = 0;

 return 1;
}
