
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int rcv_nxt; int out_of_order_queue; } ;
struct sock {int sk_receive_queue; } ;
struct sk_buff {int rbnode; } ;
struct rb_node {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int tcp_flags; int end_seq; int seq; } ;


 int TCPHDR_FIN ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ after (int ,int ) ;
 scalar_t__ before (int ,int ) ;
 int kfree_skb_partial (struct sk_buff*,int) ;
 int rb_erase (int *,int *) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;
 struct sk_buff* skb_peek_tail (int *) ;
 int tcp_drop (struct sock*,struct sk_buff*) ;
 int tcp_dsack_extend (struct sock*,int ,int ) ;
 int tcp_fin (struct sock*) ;
 int tcp_rcv_nxt_update (struct tcp_sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_try_coalesce (struct sock*,struct sk_buff*,struct sk_buff*,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tcp_ofo_queue(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 __u32 dsack_high = tp->rcv_nxt;
 bool fin, fragstolen, eaten;
 struct sk_buff *skb, *tail;
 struct rb_node *p;

 p = rb_first(&tp->out_of_order_queue);
 while (p) {
  skb = rb_to_skb(p);
  if (after(TCP_SKB_CB(skb)->seq, tp->rcv_nxt))
   break;

  if (before(TCP_SKB_CB(skb)->seq, dsack_high)) {
   __u32 dsack = dsack_high;
   if (before(TCP_SKB_CB(skb)->end_seq, dsack_high))
    dsack_high = TCP_SKB_CB(skb)->end_seq;
   tcp_dsack_extend(sk, TCP_SKB_CB(skb)->seq, dsack);
  }
  p = rb_next(p);
  rb_erase(&skb->rbnode, &tp->out_of_order_queue);

  if (unlikely(!after(TCP_SKB_CB(skb)->end_seq, tp->rcv_nxt))) {
   tcp_drop(sk, skb);
   continue;
  }

  tail = skb_peek_tail(&sk->sk_receive_queue);
  eaten = tail && tcp_try_coalesce(sk, tail, skb, &fragstolen);
  tcp_rcv_nxt_update(tp, TCP_SKB_CB(skb)->end_seq);
  fin = TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN;
  if (!eaten)
   __skb_queue_tail(&sk->sk_receive_queue, skb);
  else
   kfree_skb_partial(skb, fragstolen);

  if (unlikely(fin)) {
   tcp_fin(sk);



   break;
  }
 }
}
