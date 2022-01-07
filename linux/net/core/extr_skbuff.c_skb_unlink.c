
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;


 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void skb_unlink(struct sk_buff *skb, struct sk_buff_head *list)
{
 unsigned long flags;

 spin_lock_irqsave(&list->lock, flags);
 __skb_unlink(skb, list);
 spin_unlock_irqrestore(&list->lock, flags);
}
