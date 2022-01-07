
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int CCID_PACKET_SEND_AT_ONCE ;
 int CCID_PACKET_WILL_DEQUEUE_LATER ;
 scalar_t__ ccid2_cwnd_network_limited (int ) ;
 int ccid2_hc_tx_sk (struct sock*) ;

__attribute__((used)) static int ccid2_hc_tx_send_packet(struct sock *sk, struct sk_buff *skb)
{
 if (ccid2_cwnd_network_limited(ccid2_hc_tx_sk(sk)))
  return CCID_PACKET_WILL_DEQUEUE_LATER;
 return CCID_PACKET_SEND_AT_ONCE;
}
