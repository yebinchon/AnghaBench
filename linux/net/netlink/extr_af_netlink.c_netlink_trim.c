
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int end; int tail; int truesize; int head; int * sk; } ;
typedef int gfp_t ;


 int WARN_ON (int ) ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int consume_skb (struct sk_buff*) ;
 scalar_t__ is_vmalloc_addr (int ) ;
 int pskb_expand_head (struct sk_buff*,int ,int,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int) ;
 scalar_t__ skb_shared (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *netlink_trim(struct sk_buff *skb, gfp_t allocation)
{
 int delta;

 WARN_ON(skb->sk != ((void*)0));
 delta = skb->end - skb->tail;
 if (is_vmalloc_addr(skb->head) || delta * 2 < skb->truesize)
  return skb;

 if (skb_shared(skb)) {
  struct sk_buff *nskb = skb_clone(skb, allocation);
  if (!nskb)
   return skb;
  consume_skb(skb);
  skb = nskb;
 }

 pskb_expand_head(skb, 0, -delta,
    (allocation & ~__GFP_DIRECT_RECLAIM) |
    __GFP_NOWARN | __GFP_NORETRY);
 return skb;
}
