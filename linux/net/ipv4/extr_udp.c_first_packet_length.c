
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {struct sk_buff_head reader_queue; } ;


 struct sk_buff* __first_packet_length (struct sock*,struct sk_buff_head*,int*) ;
 int skb_queue_empty_lockless (struct sk_buff_head*) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,struct sk_buff_head*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int udp_rmem_release (struct sock*,int,int,int) ;
 TYPE_1__* udp_sk (struct sock*) ;

__attribute__((used)) static int first_packet_length(struct sock *sk)
{
 struct sk_buff_head *rcvq = &udp_sk(sk)->reader_queue;
 struct sk_buff_head *sk_queue = &sk->sk_receive_queue;
 struct sk_buff *skb;
 int total = 0;
 int res;

 spin_lock_bh(&rcvq->lock);
 skb = __first_packet_length(sk, rcvq, &total);
 if (!skb && !skb_queue_empty_lockless(sk_queue)) {
  spin_lock(&sk_queue->lock);
  skb_queue_splice_tail_init(sk_queue, rcvq);
  spin_unlock(&sk_queue->lock);

  skb = __first_packet_length(sk, rcvq, &total);
 }
 res = skb ? skb->len : -1;
 if (total)
  udp_rmem_release(sk, total, 1, 0);
 spin_unlock_bh(&rcvq->lock);
 return res;
}
