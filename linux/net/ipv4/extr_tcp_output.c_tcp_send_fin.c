
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int write_seq; scalar_t__ snd_nxt; } ;
struct sock {int sk_allocation; int tcp_rtx_queue; } ;
struct sk_buff {int truesize; int tcp_tsorted_anchor; } ;
struct TYPE_2__ {int tcp_flags; int end_seq; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAX_TCP_HEADER ;
 int TCPHDR_ACK ;
 int TCPHDR_FIN ;
 int TCP_NAGLE_OFF ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int __tcp_push_pending_frames (struct sock*,int ,int ) ;
 struct sk_buff* alloc_skb_fclone (int ,int ) ;
 int sk_forced_mem_schedule (struct sock*,int ) ;
 struct sk_buff* skb_rb_last (int *) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int tcp_current_mss (struct sock*) ;
 int tcp_init_nondata_skb (struct sk_buff*,int ,int) ;
 int tcp_queue_skb (struct sock*,struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_under_memory_pressure (struct sock*) ;
 scalar_t__ tcp_write_queue_empty (struct sock*) ;
 struct sk_buff* tcp_write_queue_tail (struct sock*) ;
 scalar_t__ unlikely (int) ;

void tcp_send_fin(struct sock *sk)
{
 struct sk_buff *skb, *tskb = tcp_write_queue_tail(sk);
 struct tcp_sock *tp = tcp_sk(sk);






 if (!tskb && tcp_under_memory_pressure(sk))
  tskb = skb_rb_last(&sk->tcp_rtx_queue);

 if (tskb) {
  TCP_SKB_CB(tskb)->tcp_flags |= TCPHDR_FIN;
  TCP_SKB_CB(tskb)->end_seq++;
  tp->write_seq++;
  if (tcp_write_queue_empty(sk)) {






   WRITE_ONCE(tp->snd_nxt, tp->snd_nxt + 1);
   return;
  }
 } else {
  skb = alloc_skb_fclone(MAX_TCP_HEADER, sk->sk_allocation);
  if (unlikely(!skb))
   return;

  INIT_LIST_HEAD(&skb->tcp_tsorted_anchor);
  skb_reserve(skb, MAX_TCP_HEADER);
  sk_forced_mem_schedule(sk, skb->truesize);

  tcp_init_nondata_skb(skb, tp->write_seq,
         TCPHDR_ACK | TCPHDR_FIN);
  tcp_queue_skb(sk, skb);
 }
 __tcp_push_pending_frames(sk, tcp_current_mss(sk), TCP_NAGLE_OFF);
}
