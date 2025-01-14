
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_drops; } ;
struct sk_buff_head {int lock; } ;
struct sk_buff {int users; scalar_t__ next; } ;


 int ENOENT ;
 unsigned int MSG_PEEK ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int atomic_inc (int *) ;
 int refcount_dec (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int __sk_queue_drop_skb(struct sock *sk, struct sk_buff_head *sk_queue,
   struct sk_buff *skb, unsigned int flags,
   void (*destructor)(struct sock *sk,
        struct sk_buff *skb))
{
 int err = 0;

 if (flags & MSG_PEEK) {
  err = -ENOENT;
  spin_lock_bh(&sk_queue->lock);
  if (skb->next) {
   __skb_unlink(skb, sk_queue);
   refcount_dec(&skb->users);
   if (destructor)
    destructor(sk, skb);
   err = 0;
  }
  spin_unlock_bh(&sk_queue->lock);
 }

 atomic_inc(&sk->sk_drops);
 return err;
}
