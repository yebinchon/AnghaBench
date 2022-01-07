
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int csum; } ;
struct icmphdr {scalar_t__ checksum; } ;


 int CHECKSUM_NONE ;
 scalar_t__ csum_fold (int ) ;
 int csum_partial (struct icmphdr*,unsigned int,int ) ;
 struct icmphdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int tcf_csum_ipv4_icmp(struct sk_buff *skb, unsigned int ihl,
         unsigned int ipl)
{
 struct icmphdr *icmph;

 icmph = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*icmph));
 if (icmph == ((void*)0))
  return 0;

 icmph->checksum = 0;
 skb->csum = csum_partial(icmph, ipl - ihl, 0);
 icmph->checksum = csum_fold(skb->csum);

 skb->ip_summed = CHECKSUM_NONE;

 return 1;
}
