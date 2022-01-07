
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_role; int dccps_server_timewait; } ;
typedef int gfp_t ;
struct TYPE_4__ {int dccpd_type; } ;
struct TYPE_3__ {int max_header; } ;


 int DCCP_PKT_CLOSE ;
 int DCCP_PKT_CLOSEREQ ;
 scalar_t__ DCCP_ROLE_SERVER ;
 int DCCP_RTO_MAX ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int DCCP_TIMEOUT_INIT ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int ICSK_TIME_RETRANS ;
 struct sk_buff* alloc_skb (int ,int const) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 struct sk_buff* dccp_skb_entail (struct sock*,struct sk_buff*) ;
 int dccp_transmit_skb (struct sock*,struct sk_buff*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

void dccp_send_close(struct sock *sk, const int active)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct sk_buff *skb;
 const gfp_t prio = active ? GFP_KERNEL : GFP_ATOMIC;

 skb = alloc_skb(sk->sk_prot->max_header, prio);
 if (skb == ((void*)0))
  return;


 skb_reserve(skb, sk->sk_prot->max_header);
 if (dp->dccps_role == DCCP_ROLE_SERVER && !dp->dccps_server_timewait)
  DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_CLOSEREQ;
 else
  DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_CLOSE;

 if (active) {
  skb = dccp_skb_entail(sk, skb);
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
       DCCP_TIMEOUT_INIT, DCCP_RTO_MAX);
 }
 dccp_transmit_skb(sk, skb);
}
