
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_xmit_timer; int dccps_hc_tx_ccid; } ;






 int ccid_hc_tx_send_packet (int ,struct sock*,struct sk_buff*) ;
 int ccid_packet_dequeue_eval (int) ;
 int dccp_pr_debug (char*,int) ;
 int dccp_qpolicy_drop (struct sock*,struct sk_buff*) ;
 struct sk_buff* dccp_qpolicy_top (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_xmit_packet (struct sock*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;

void dccp_write_xmit(struct sock *sk)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct sk_buff *skb;

 while ((skb = dccp_qpolicy_top(sk))) {
  int rc = ccid_hc_tx_send_packet(dp->dccps_hc_tx_ccid, sk, skb);

  switch (ccid_packet_dequeue_eval(rc)) {
  case 128:
   return;
  case 131:
   sk_reset_timer(sk, &dp->dccps_xmit_timer,
           jiffies + msecs_to_jiffies(rc));
   return;
  case 129:
   dccp_xmit_packet(sk);
   break;
  case 130:
   dccp_qpolicy_drop(sk, skb);
   dccp_pr_debug("packet discarded due to err=%d\n", rc);
  }
 }
}
