
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sock {scalar_t__ sk_rcvbuf; int (* sk_data_ready ) (struct sock*) ;int sk_drops; int sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int * dev; int truesize; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int SOCK_DEAD ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int sk_rmem_schedule (struct sock*,struct sk_buff*,int ) ;
 int skb_dst_force (struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_skb_set_dropcount (struct sock*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sock*) ;
 int trace_sock_rcvqueue_full (struct sock*,struct sk_buff*) ;

int __sock_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 unsigned long flags;
 struct sk_buff_head *list = &sk->sk_receive_queue;

 if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf) {
  atomic_inc(&sk->sk_drops);
  trace_sock_rcvqueue_full(sk, skb);
  return -ENOMEM;
 }

 if (!sk_rmem_schedule(sk, skb, skb->truesize)) {
  atomic_inc(&sk->sk_drops);
  return -ENOBUFS;
 }

 skb->dev = ((void*)0);
 skb_set_owner_r(skb, sk);




 skb_dst_force(skb);

 spin_lock_irqsave(&list->lock, flags);
 sock_skb_set_dropcount(sk, skb);
 __skb_queue_tail(list, skb);
 spin_unlock_irqrestore(&list->lock, flags);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk);
 return 0;
}
