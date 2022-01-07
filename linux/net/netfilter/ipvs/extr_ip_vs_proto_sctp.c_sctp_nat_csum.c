
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; } ;
struct sctphdr {int checksum; } ;


 int CHECKSUM_UNNECESSARY ;
 int sctp_compute_cksum (struct sk_buff*,unsigned int) ;

__attribute__((used)) static void sctp_nat_csum(struct sk_buff *skb, struct sctphdr *sctph,
     unsigned int sctphoff)
{
 sctph->checksum = sctp_compute_cksum(skb, sctphoff);
 skb->ip_summed = CHECKSUM_UNNECESSARY;
}
