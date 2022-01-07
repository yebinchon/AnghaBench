
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ qlen; int lock; } ;


 int GFP_ATOMIC ;
 scalar_t__ MAX_SKBS ;
 int MAX_SKB_SIZE ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 TYPE_1__ skb_pool ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void refill_skbs(void)
{
 struct sk_buff *skb;
 unsigned long flags;

 spin_lock_irqsave(&skb_pool.lock, flags);
 while (skb_pool.qlen < MAX_SKBS) {
  skb = alloc_skb(MAX_SKB_SIZE, GFP_ATOMIC);
  if (!skb)
   break;

  __skb_queue_tail(&skb_pool, skb);
 }
 spin_unlock_irqrestore(&skb_pool.lock, flags);
}
