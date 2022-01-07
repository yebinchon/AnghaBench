
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ccid2_hc_rx_sock {scalar_t__ rx_num_data_pkts; } ;
struct TYPE_2__ {scalar_t__ dccps_r_ack_ratio; } ;


 struct ccid2_hc_rx_sock* ccid2_hc_rx_sk (struct sock*) ;
 int dccp_data_packet (struct sk_buff*) ;
 int dccp_send_ack (struct sock*) ;
 TYPE_1__* dccp_sk (struct sock*) ;

__attribute__((used)) static void ccid2_hc_rx_packet_recv(struct sock *sk, struct sk_buff *skb)
{
 struct ccid2_hc_rx_sock *hc = ccid2_hc_rx_sk(sk);

 if (!dccp_data_packet(skb))
  return;

 if (++hc->rx_num_data_pkts >= dccp_sk(sk)->dccps_r_ack_ratio) {
  dccp_send_ack(sk);
  hc->rx_num_data_pkts = 0;
 }
}
