
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sock {int sk_rcvbuf; int sk_forward_alloc; int sk_drops; int sk_rmem_alloc; int (* sk_data_ready ) (struct sock*) ;struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int truesize; } ;
typedef int spinlock_t ;


 int ENOBUFS ;
 int ENOMEM ;
 int SK_MEM_QUANTUM_SHIFT ;
 int SK_MEM_RECV ;
 int SOCK_DEAD ;
 int __sk_mem_raise_allocated (struct sock*,int,int,int ) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int atomic_add_return (int,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int * busylock_acquire (struct sock*) ;
 int busylock_release (int *) ;
 int sk_mem_pages (int) ;
 int skb_condense (struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_skb_set_dropcount (struct sock*,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sock*) ;
 int udp_set_dev_scratch (struct sk_buff*) ;

int __udp_enqueue_schedule_skb(struct sock *sk, struct sk_buff *skb)
{
 struct sk_buff_head *list = &sk->sk_receive_queue;
 int rmem, delta, amt, err = -ENOMEM;
 spinlock_t *busy = ((void*)0);
 int size;




 rmem = atomic_read(&sk->sk_rmem_alloc);
 if (rmem > sk->sk_rcvbuf)
  goto drop;







 if (rmem > (sk->sk_rcvbuf >> 1)) {
  skb_condense(skb);

  busy = busylock_acquire(sk);
 }
 size = skb->truesize;
 udp_set_dev_scratch(skb);




 rmem = atomic_add_return(size, &sk->sk_rmem_alloc);
 if (rmem > (size + sk->sk_rcvbuf))
  goto uncharge_drop;

 spin_lock(&list->lock);
 if (size >= sk->sk_forward_alloc) {
  amt = sk_mem_pages(size);
  delta = amt << SK_MEM_QUANTUM_SHIFT;
  if (!__sk_mem_raise_allocated(sk, delta, amt, SK_MEM_RECV)) {
   err = -ENOBUFS;
   spin_unlock(&list->lock);
   goto uncharge_drop;
  }

  sk->sk_forward_alloc += delta;
 }

 sk->sk_forward_alloc -= size;




 sock_skb_set_dropcount(sk, skb);

 __skb_queue_tail(list, skb);
 spin_unlock(&list->lock);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_data_ready(sk);

 busylock_release(busy);
 return 0;

uncharge_drop:
 atomic_sub(skb->truesize, &sk->sk_rmem_alloc);

drop:
 atomic_inc(&sk->sk_drops);
 busylock_release(busy);
 return err;
}
