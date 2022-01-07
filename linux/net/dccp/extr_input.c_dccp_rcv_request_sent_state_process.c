
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_err; scalar_t__ sk_write_pending; int (* sk_state_change ) (struct sock*) ;int * sk_send_head; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {scalar_t__ rskq_defer_accept; } ;
struct inet_connection_sock {TYPE_3__ icsk_accept_queue; TYPE_2__* icsk_af_ops; int icsk_pmtu_cookie; } ;
struct TYPE_5__ {long dccpor_timestamp_echo; } ;
struct dccp_sock {int dccps_featneg; int dccps_isr; int dccps_gsr; TYPE_1__ dccps_options_received; int dccps_syn_rtt; scalar_t__ dccps_awh; scalar_t__ dccps_awl; } ;
struct dccp_hdr {scalar_t__ dccph_type; } ;
struct TYPE_8__ {int dccpd_reset_code; int dccpd_seq; scalar_t__ dccpd_ack_seq; } ;
struct TYPE_6__ {int (* rebuild_header ) (struct sock*) ;} ;


 int DCCP_CLOSED ;
 int DCCP_PARTOPEN ;
 scalar_t__ DCCP_PKT_RESPONSE ;
 int DCCP_RESET_CODE_ABORTED ;
 int DCCP_RESET_CODE_PACKET_ERROR ;
 TYPE_4__* DCCP_SKB_CB (struct sk_buff*) ;
 int ECOMM ;
 int ICSK_TIME_RETRANS ;
 int POLL_OUT ;
 int SOCK_DEAD ;
 int SOCK_WAKE_IO ;
 int WARN_ON (int ) ;
 int __kfree_skb (struct sk_buff*) ;
 int between48 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ dccp_feat_activate_values (struct sock*,int *) ;
 scalar_t__ dccp_parse_options (struct sock*,int *,struct sk_buff*) ;
 int dccp_pr_debug (char*,unsigned long long,unsigned long long,unsigned long long) ;
 int dccp_sample_rtt (struct sock*,int) ;
 int dccp_send_ack (struct sock*) ;
 int dccp_set_state (struct sock*,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_sync_mss (struct sock*,int ) ;
 long dccp_timestamp () ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 scalar_t__ inet_csk_in_pingpong_mode (struct sock*) ;
 int kfree_skb (int *) ;
 scalar_t__ likely (long) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static int dccp_rcv_request_sent_state_process(struct sock *sk,
            struct sk_buff *skb,
            const struct dccp_hdr *dh,
            const unsigned int len)
{
 if (dh->dccph_type == DCCP_PKT_RESPONSE) {
  const struct inet_connection_sock *icsk = inet_csk(sk);
  struct dccp_sock *dp = dccp_sk(sk);
  long tstamp = dccp_timestamp();

  if (!between48(DCCP_SKB_CB(skb)->dccpd_ack_seq,
          dp->dccps_awl, dp->dccps_awh)) {
   dccp_pr_debug("invalid ackno: S.AWL=%llu, "
          "P.ackno=%llu, S.AWH=%llu\n",
          (unsigned long long)dp->dccps_awl,
      (unsigned long long)DCCP_SKB_CB(skb)->dccpd_ack_seq,
          (unsigned long long)dp->dccps_awh);
   goto out_invalid_packet;
  }






  if (dccp_parse_options(sk, ((void*)0), skb))
   return 1;


  if (likely(dp->dccps_options_received.dccpor_timestamp_echo))
   dp->dccps_syn_rtt = dccp_sample_rtt(sk, 10 * (tstamp -
       dp->dccps_options_received.dccpor_timestamp_echo));


  inet_csk_clear_xmit_timer(sk, ICSK_TIME_RETRANS);
  WARN_ON(sk->sk_send_head == ((void*)0));
  kfree_skb(sk->sk_send_head);
  sk->sk_send_head = ((void*)0);
  dp->dccps_gsr = dp->dccps_isr = DCCP_SKB_CB(skb)->dccpd_seq;

  dccp_sync_mss(sk, icsk->icsk_pmtu_cookie);
  dccp_set_state(sk, DCCP_PARTOPEN);







  if (dccp_feat_activate_values(sk, &dp->dccps_featneg))
   goto unable_to_proceed;


  icsk->icsk_af_ops->rebuild_header(sk);

  if (!sock_flag(sk, SOCK_DEAD)) {
   sk->sk_state_change(sk);
   sk_wake_async(sk, SOCK_WAKE_IO, POLL_OUT);
  }

  if (sk->sk_write_pending || inet_csk_in_pingpong_mode(sk) ||
      icsk->icsk_accept_queue.rskq_defer_accept) {
   __kfree_skb(skb);
   return 0;
  }
  dccp_send_ack(sk);
  return -1;
 }

out_invalid_packet:

 DCCP_SKB_CB(skb)->dccpd_reset_code = DCCP_RESET_CODE_PACKET_ERROR;
 return 1;

unable_to_proceed:
 DCCP_SKB_CB(skb)->dccpd_reset_code = DCCP_RESET_CODE_ABORTED;




 dccp_set_state(sk, DCCP_CLOSED);
 sk->sk_err = ECOMM;
 return 1;
}
