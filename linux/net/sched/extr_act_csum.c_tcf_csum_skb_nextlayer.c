
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,int) ;

__attribute__((used)) static void *tcf_csum_skb_nextlayer(struct sk_buff *skb,
        unsigned int ihl, unsigned int ipl,
        unsigned int jhl)
{
 int ntkoff = skb_network_offset(skb);
 int hl = ihl + jhl;

 if (!pskb_may_pull(skb, ipl + ntkoff) || (ipl < hl) ||
     skb_try_make_writable(skb, hl + ntkoff))
  return ((void*)0);
 else
  return (void *)(skb_network_header(skb) + ihl);
}
