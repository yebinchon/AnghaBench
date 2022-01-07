
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_hc_tx_ccid; } ;






 int DCCP_WARN (char*) ;
 long ccid_hc_tx_send_packet (int ,struct sock*,struct sk_buff*) ;
 int ccid_packet_dequeue_eval (long) ;
 int dccp_pr_debug (char*,long) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 long dccp_wait_for_ccid (struct sock*,long) ;
 int dccp_xmit_packet (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 long msecs_to_jiffies (long) ;
 int skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;

void dccp_flush_write_queue(struct sock *sk, long *time_budget)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct sk_buff *skb;
 long delay, rc;

 while (*time_budget > 0 && (skb = skb_peek(&sk->sk_write_queue))) {
  rc = ccid_hc_tx_send_packet(dp->dccps_hc_tx_ccid, sk, skb);

  switch (ccid_packet_dequeue_eval(rc)) {
  case 128:





   DCCP_WARN("CCID did not manage to send all packets\n");
   return;
  case 131:
   delay = msecs_to_jiffies(rc);
   if (delay > *time_budget)
    return;
   rc = dccp_wait_for_ccid(sk, delay);
   if (rc < 0)
    return;
   *time_budget -= (delay - rc);

   break;
  case 129:
   dccp_xmit_packet(sk);
   break;
  case 130:
   skb_dequeue(&sk->sk_write_queue);
   kfree_skb(skb);
   dccp_pr_debug("packet discarded due to err=%ld\n", rc);
  }
 }
}
