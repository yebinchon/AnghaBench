
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_sock {int forward_deficit; int reader_queue; } ;
struct sk_buff_head {int lock; } ;
struct sock {int sk_rcvbuf; int sk_forward_alloc; int sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;


 int SK_MEM_QUANTUM ;
 int SK_MEM_QUANTUM_SHIFT ;
 int __sk_mem_reduce_allocated (struct sock*,int) ;
 int atomic_sub (int,int *) ;
 scalar_t__ likely (int) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct udp_sock* udp_sk (struct sock*) ;

__attribute__((used)) static void udp_rmem_release(struct sock *sk, int size, int partial,
        bool rx_queue_lock_held)
{
 struct udp_sock *up = udp_sk(sk);
 struct sk_buff_head *sk_queue;
 int amt;

 if (likely(partial)) {
  up->forward_deficit += size;
  size = up->forward_deficit;
  if (size < (sk->sk_rcvbuf >> 2))
   return;
 } else {
  size += up->forward_deficit;
 }
 up->forward_deficit = 0;




 sk_queue = &sk->sk_receive_queue;
 if (!rx_queue_lock_held)
  spin_lock(&sk_queue->lock);


 sk->sk_forward_alloc += size;
 amt = (sk->sk_forward_alloc - partial) & ~(SK_MEM_QUANTUM - 1);
 sk->sk_forward_alloc -= amt;

 if (amt)
  __sk_mem_reduce_allocated(sk, amt >> SK_MEM_QUANTUM_SHIFT);

 atomic_sub(size, &sk->sk_rmem_alloc);


 skb_queue_splice_tail_init(sk_queue, &up->reader_queue);

 if (!rx_queue_lock_held)
  spin_unlock(&sk_queue->lock);
}
