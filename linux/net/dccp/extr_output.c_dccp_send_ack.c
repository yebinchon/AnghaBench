
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; TYPE_2__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int dccpd_type; } ;
struct TYPE_5__ {int ato; } ;
struct TYPE_7__ {TYPE_1__ icsk_ack; } ;
struct TYPE_6__ {int max_header; } ;


 scalar_t__ DCCP_CLOSED ;
 int DCCP_PKT_ACK ;
 int DCCP_RTO_MAX ;
 TYPE_4__* DCCP_SKB_CB (struct sk_buff*) ;
 int GFP_ATOMIC ;
 int ICSK_TIME_DACK ;
 int TCP_ATO_MIN ;
 int TCP_DELACK_MAX ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dccp_transmit_skb (struct sock*,struct sk_buff*) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int inet_csk_schedule_ack (struct sock*) ;
 int skb_reserve (struct sk_buff*,int ) ;

void dccp_send_ack(struct sock *sk)
{

 if (sk->sk_state != DCCP_CLOSED) {
  struct sk_buff *skb = alloc_skb(sk->sk_prot->max_header,
      GFP_ATOMIC);

  if (skb == ((void*)0)) {
   inet_csk_schedule_ack(sk);
   inet_csk(sk)->icsk_ack.ato = TCP_ATO_MIN;
   inet_csk_reset_xmit_timer(sk, ICSK_TIME_DACK,
        TCP_DELACK_MAX,
        DCCP_RTO_MAX);
   return;
  }


  skb_reserve(skb, sk->sk_prot->max_header);
  DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_ACK;
  dccp_transmit_skb(sk, skb);
 }
}
