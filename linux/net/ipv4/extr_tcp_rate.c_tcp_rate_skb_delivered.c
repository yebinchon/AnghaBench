
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int first_tx_mstamp; } ;
struct TYPE_2__ {scalar_t__ delivered_mstamp; int first_tx_mstamp; int is_app_limited; int delivered; } ;
struct tcp_skb_cb {int sacked; TYPE_1__ tx; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rate_sample {int is_retrans; int interval_us; int is_app_limited; scalar_t__ prior_mstamp; int prior_delivered; } ;


 int TCPCB_RETRANS ;
 int TCPCB_SACKED_ACKED ;
 struct tcp_skb_cb* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_timestamp_us (struct sk_buff*) ;
 int tcp_stamp_us_delta (int ,int ) ;

void tcp_rate_skb_delivered(struct sock *sk, struct sk_buff *skb,
       struct rate_sample *rs)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcp_skb_cb *scb = TCP_SKB_CB(skb);

 if (!scb->tx.delivered_mstamp)
  return;

 if (!rs->prior_delivered ||
     after(scb->tx.delivered, rs->prior_delivered)) {
  rs->prior_delivered = scb->tx.delivered;
  rs->prior_mstamp = scb->tx.delivered_mstamp;
  rs->is_app_limited = scb->tx.is_app_limited;
  rs->is_retrans = scb->sacked & TCPCB_RETRANS;


  tp->first_tx_mstamp = tcp_skb_timestamp_us(skb);

  rs->interval_us = tcp_stamp_us_delta(tp->first_tx_mstamp,
           scb->tx.first_tx_mstamp);

 }




 if (scb->sacked & TCPCB_SACKED_ACKED)
  scb->tx.delivered_mstamp = 0;
}
