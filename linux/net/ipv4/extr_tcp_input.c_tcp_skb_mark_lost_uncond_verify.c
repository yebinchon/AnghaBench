
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int lost_out; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;


 int TCPCB_LOST ;
 int TCPCB_SACKED_ACKED ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;
 int tcp_sum_lost (struct tcp_sock*,struct sk_buff*) ;
 int tcp_verify_retransmit_hint (struct tcp_sock*,struct sk_buff*) ;

void tcp_skb_mark_lost_uncond_verify(struct tcp_sock *tp, struct sk_buff *skb)
{
 tcp_verify_retransmit_hint(tp, skb);

 tcp_sum_lost(tp, skb);
 if (!(TCP_SKB_CB(skb)->sacked & (TCPCB_LOST|TCPCB_SACKED_ACKED))) {
  tp->lost_out += tcp_skb_pcount(skb);
  TCP_SKB_CB(skb)->sacked |= TCPCB_LOST;
 }
}
