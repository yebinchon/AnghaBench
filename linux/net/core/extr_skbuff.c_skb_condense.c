
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data_len; scalar_t__ end; scalar_t__ tail; int truesize; } ;


 int SKB_TRUESIZE (int ) ;
 int __pskb_pull_tail (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 int skb_end_offset (struct sk_buff*) ;

void skb_condense(struct sk_buff *skb)
{
 if (skb->data_len) {
  if (skb->data_len > skb->end - skb->tail ||
      skb_cloned(skb))
   return;


  __pskb_pull_tail(skb, skb->data_len);
 }







 skb->truesize = SKB_TRUESIZE(skb_end_offset(skb));
}
