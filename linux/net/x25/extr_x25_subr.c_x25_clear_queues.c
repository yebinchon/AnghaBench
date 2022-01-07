
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int fragment_queue; int interrupt_out_queue; int interrupt_in_queue; int ack_queue; } ;
struct sock {int sk_write_queue; } ;


 int skb_queue_purge (int *) ;
 struct x25_sock* x25_sk (struct sock*) ;

void x25_clear_queues(struct sock *sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 skb_queue_purge(&sk->sk_write_queue);
 skb_queue_purge(&x25->ack_queue);
 skb_queue_purge(&x25->interrupt_in_queue);
 skb_queue_purge(&x25->interrupt_out_queue);
 skb_queue_purge(&x25->fragment_queue);
}
