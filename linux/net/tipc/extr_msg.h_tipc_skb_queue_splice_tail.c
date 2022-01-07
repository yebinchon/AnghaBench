
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;


 int skb_queue_splice_tail (struct sk_buff_head*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void tipc_skb_queue_splice_tail(struct sk_buff_head *list,
           struct sk_buff_head *head)
{
 spin_lock_bh(&head->lock);
 skb_queue_splice_tail(list, head);
 spin_unlock_bh(&head->lock);
}
