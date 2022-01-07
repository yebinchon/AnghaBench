
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x_recv ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct ccid3_hc_rx_sock {int rx_pinv; int rx_x_recv; } ;
typedef int pinv ;
typedef int __be32 ;


 scalar_t__ DCCP_OPEN ;
 scalar_t__ DCCP_PARTOPEN ;
 int TFRC_OPT_LOSS_EVENT_RATE ;
 int TFRC_OPT_RECEIVE_RATE ;
 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 scalar_t__ dccp_insert_option (struct sk_buff*,int ,int *,int) ;
 scalar_t__ dccp_packet_without_ack (struct sk_buff*) ;
 int htonl (int ) ;

__attribute__((used)) static int ccid3_hc_rx_insert_options(struct sock *sk, struct sk_buff *skb)
{
 const struct ccid3_hc_rx_sock *hc = ccid3_hc_rx_sk(sk);
 __be32 x_recv, pinv;

 if (!(sk->sk_state == DCCP_OPEN || sk->sk_state == DCCP_PARTOPEN))
  return 0;

 if (dccp_packet_without_ack(skb))
  return 0;

 x_recv = htonl(hc->rx_x_recv);
 pinv = htonl(hc->rx_pinv);

 if (dccp_insert_option(skb, TFRC_OPT_LOSS_EVENT_RATE,
          &pinv, sizeof(pinv)) ||
     dccp_insert_option(skb, TFRC_OPT_RECEIVE_RATE,
          &x_recv, sizeof(x_recv)))
  return -1;

 return 0;
}
