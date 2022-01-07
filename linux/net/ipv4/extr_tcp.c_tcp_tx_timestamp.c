
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcp_skb_cb {int txstamp_ack; scalar_t__ seq; } ;
struct sock {int dummy; } ;
struct skb_shared_info {scalar_t__ tskey; int tx_flags; } ;
struct sk_buff {scalar_t__ len; } ;


 int SOF_TIMESTAMPING_TX_ACK ;
 int SOF_TIMESTAMPING_TX_RECORD_MASK ;
 struct tcp_skb_cb* TCP_SKB_CB (struct sk_buff*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int sock_tx_timestamp (struct sock*,int,int *) ;
 struct sk_buff* tcp_write_queue_tail (struct sock*) ;

__attribute__((used)) static void tcp_tx_timestamp(struct sock *sk, u16 tsflags)
{
 struct sk_buff *skb = tcp_write_queue_tail(sk);

 if (tsflags && skb) {
  struct skb_shared_info *shinfo = skb_shinfo(skb);
  struct tcp_skb_cb *tcb = TCP_SKB_CB(skb);

  sock_tx_timestamp(sk, tsflags, &shinfo->tx_flags);
  if (tsflags & SOF_TIMESTAMPING_TX_ACK)
   tcb->txstamp_ack = 1;
  if (tsflags & SOF_TIMESTAMPING_TX_RECORD_MASK)
   shinfo->tskey = TCP_SKB_CB(skb)->seq + skb->len - 1;
 }
}
