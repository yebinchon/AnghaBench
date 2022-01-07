
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_queued; int sk_forward_alloc; int sk_write_queue; int sk_error_queue; int sk_receive_queue; } ;


 int WARN_ON (int) ;
 int __skb_queue_purge (int *) ;
 int sk_mem_reclaim (struct sock*) ;
 int skb_queue_empty (int *) ;

void sk_stream_kill_queues(struct sock *sk)
{

 __skb_queue_purge(&sk->sk_receive_queue);


 __skb_queue_purge(&sk->sk_error_queue);


 WARN_ON(!skb_queue_empty(&sk->sk_write_queue));


 sk_mem_reclaim(sk);

 WARN_ON(sk->sk_wmem_queued);
 WARN_ON(sk->sk_forward_alloc);





}
