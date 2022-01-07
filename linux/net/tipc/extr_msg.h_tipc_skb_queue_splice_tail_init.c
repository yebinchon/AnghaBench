
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_skb_queue_splice_tail (struct sk_buff_head*,struct sk_buff_head*) ;

__attribute__((used)) static inline void tipc_skb_queue_splice_tail_init(struct sk_buff_head *list,
         struct sk_buff_head *head)
{
 struct sk_buff_head tmp;

 __skb_queue_head_init(&tmp);

 spin_lock_bh(&list->lock);
 skb_queue_splice_tail_init(list, &tmp);
 spin_unlock_bh(&list->lock);
 tipc_skb_queue_splice_tail(&tmp, head);
}
