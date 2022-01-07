
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {struct sk_buff* retransmit_skb_hint; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int sacked; int eor; int tcp_flags; int end_seq; } ;


 int BUG_ON (int) ;
 int TCPCB_EVER_RETRANS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int skb_availroom (struct sk_buff*) ;
 int skb_copy_bits (struct sk_buff*,int ,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 struct sk_buff* skb_rb_next (struct sk_buff*) ;
 int tcp_adjust_pcount (struct sock*,struct sk_buff*,int) ;
 int tcp_clear_retrans_hints_partial (struct tcp_sock*) ;
 int tcp_highest_sack_replace (struct sock*,struct sk_buff*,struct sk_buff*) ;
 int tcp_rtx_queue_unlink_and_free (struct sk_buff*,struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_collapse_tstamp (struct sk_buff*,struct sk_buff*) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 int tcp_skb_shift (struct sk_buff*,struct sk_buff*,int,int) ;

__attribute__((used)) static bool tcp_collapse_retrans(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *next_skb = skb_rb_next(skb);
 int next_skb_size;

 next_skb_size = next_skb->len;

 BUG_ON(tcp_skb_pcount(skb) != 1 || tcp_skb_pcount(next_skb) != 1);

 if (next_skb_size) {
  if (next_skb_size <= skb_availroom(skb))
   skb_copy_bits(next_skb, 0, skb_put(skb, next_skb_size),
          next_skb_size);
  else if (!tcp_skb_shift(skb, next_skb, 1, next_skb_size))
   return 0;
 }
 tcp_highest_sack_replace(sk, next_skb, skb);


 TCP_SKB_CB(skb)->end_seq = TCP_SKB_CB(next_skb)->end_seq;


 TCP_SKB_CB(skb)->tcp_flags |= TCP_SKB_CB(next_skb)->tcp_flags;




 TCP_SKB_CB(skb)->sacked |= TCP_SKB_CB(next_skb)->sacked & TCPCB_EVER_RETRANS;
 TCP_SKB_CB(skb)->eor = TCP_SKB_CB(next_skb)->eor;


 tcp_clear_retrans_hints_partial(tp);
 if (next_skb == tp->retransmit_skb_hint)
  tp->retransmit_skb_hint = skb;

 tcp_adjust_pcount(sk, next_skb, tcp_skb_pcount(next_skb));

 tcp_skb_collapse_tstamp(skb, next_skb);

 tcp_rtx_queue_unlink_and_free(next_skb, sk);
 return 1;
}
