
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct nr_sock {int frag_queue; int reseq_queue; int ack_queue; } ;


 struct nr_sock* nr_sk (struct sock*) ;
 int skb_queue_purge (int *) ;

void nr_clear_queues(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);

 skb_queue_purge(&sk->sk_write_queue);
 skb_queue_purge(&nr->ack_queue);
 skb_queue_purge(&nr->reseq_queue);
 skb_queue_purge(&nr->frag_queue);
}
