
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int csum; } ;
struct igmphdr {scalar_t__ csum; } ;


 int CHECKSUM_NONE ;
 scalar_t__ csum_fold (int ) ;
 int csum_partial (struct igmphdr*,unsigned int,int ) ;
 struct igmphdr* tcf_csum_skb_nextlayer (struct sk_buff*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int tcf_csum_ipv4_igmp(struct sk_buff *skb,
         unsigned int ihl, unsigned int ipl)
{
 struct igmphdr *igmph;

 igmph = tcf_csum_skb_nextlayer(skb, ihl, ipl, sizeof(*igmph));
 if (igmph == ((void*)0))
  return 0;

 igmph->csum = 0;
 skb->csum = csum_partial(igmph, ipl - ihl, 0);
 igmph->csum = csum_fold(skb->csum);

 skb->ip_summed = CHECKSUM_NONE;

 return 1;
}
