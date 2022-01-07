
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; } ;
struct dccp_sock {int dccps_mss_cache; int dccps_gsr; scalar_t__ dccps_sync_scheduled; int dccps_hc_tx_ccid; int dccps_featneg; } ;
struct TYPE_4__ {void* dccpd_type; } ;
struct TYPE_3__ {int icsk_rto; } ;


 int DCCP_FEATNEG_OVERHEAD ;
 scalar_t__ DCCP_PARTOPEN ;
 void* DCCP_PKT_DATA ;
 void* DCCP_PKT_DATAACK ;
 int DCCP_PKT_SYNC ;
 int DCCP_RTO_MAX ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int DCCP_WARN (char*,int) ;
 int ICSK_TIME_DACK ;
 int ccid_hc_tx_packet_sent (int ,struct sock*,int) ;
 scalar_t__ dccp_ack_pending (struct sock*) ;
 int dccp_feat_list_purge (int *) ;
 int dccp_pr_debug (char*,int) ;
 struct sk_buff* dccp_qpolicy_pop (struct sock*) ;
 int dccp_send_ack (struct sock*) ;
 int dccp_send_sync (struct sock*,int ,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_transmit_skb (struct sock*,struct sk_buff*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int inet_csk_schedule_ack (struct sock*) ;
 int list_empty (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dccp_xmit_packet(struct sock *sk)
{
 int err, len;
 struct dccp_sock *dp = dccp_sk(sk);
 struct sk_buff *skb = dccp_qpolicy_pop(sk);

 if (unlikely(skb == ((void*)0)))
  return;
 len = skb->len;

 if (sk->sk_state == DCCP_PARTOPEN) {
  const u32 cur_mps = dp->dccps_mss_cache - DCCP_FEATNEG_OVERHEAD;







  if (!list_empty(&dp->dccps_featneg) && len > cur_mps) {
   DCCP_WARN("Payload too large (%d) for featneg.\n", len);
   dccp_send_ack(sk);
   dccp_feat_list_purge(&dp->dccps_featneg);
  }

  inet_csk_schedule_ack(sk);
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_DACK,
           inet_csk(sk)->icsk_rto,
           DCCP_RTO_MAX);
  DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_DATAACK;
 } else if (dccp_ack_pending(sk)) {
  DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_DATAACK;
 } else {
  DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_DATA;
 }

 err = dccp_transmit_skb(sk, skb);
 if (err)
  dccp_pr_debug("transmit_skb() returned err=%d\n", err);





 ccid_hc_tx_packet_sent(dp->dccps_hc_tx_ccid, sk, len);







 if (dp->dccps_sync_scheduled)
  dccp_send_sync(sk, dp->dccps_gsr, DCCP_PKT_SYNC);
}
