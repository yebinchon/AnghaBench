
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct tcp_sock {scalar_t__ app_limited; int delivered; void* delivered_mstamp; void* first_tx_mstamp; int packets_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int is_app_limited; int delivered; void* delivered_mstamp; void* first_tx_mstamp; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;


 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 void* tcp_skb_timestamp_us (struct sk_buff*) ;

void tcp_rate_skb_sent(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 if (!tp->packets_out) {
  u64 tstamp_us = tcp_skb_timestamp_us(skb);

  tp->first_tx_mstamp = tstamp_us;
  tp->delivered_mstamp = tstamp_us;
 }

 TCP_SKB_CB(skb)->tx.first_tx_mstamp = tp->first_tx_mstamp;
 TCP_SKB_CB(skb)->tx.delivered_mstamp = tp->delivered_mstamp;
 TCP_SKB_CB(skb)->tx.delivered = tp->delivered;
 TCP_SKB_CB(skb)->tx.is_app_limited = tp->app_limited ? 1 : 0;
}
