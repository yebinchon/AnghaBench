
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_sock {int reader_queue; } ;
struct sock {int sk_receive_queue; } ;
struct sk_buff {scalar_t__ truesize; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int inet_sock_destruct (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_splice_tail_init (int *,int *) ;
 int udp_rmem_release (struct sock*,unsigned int,int ,int) ;
 struct udp_sock* udp_sk (struct sock*) ;

void udp_destruct_sock(struct sock *sk)
{

 struct udp_sock *up = udp_sk(sk);
 unsigned int total = 0;
 struct sk_buff *skb;

 skb_queue_splice_tail_init(&sk->sk_receive_queue, &up->reader_queue);
 while ((skb = __skb_dequeue(&up->reader_queue)) != ((void*)0)) {
  total += skb->truesize;
  kfree_skb(skb);
 }
 udp_rmem_release(sk, total, 0, 1);

 inet_sock_destruct(sk);
}
