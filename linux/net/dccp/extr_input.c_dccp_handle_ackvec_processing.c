
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_ackvec {int dummy; } ;
struct TYPE_4__ {scalar_t__ dccpd_ack_seq; } ;
struct TYPE_3__ {struct dccp_ackvec* dccps_hc_rx_ackvec; } ;


 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int dccp_ackvec_clear_state (struct dccp_ackvec*,scalar_t__) ;
 int dccp_ackvec_input (struct dccp_ackvec*,struct sk_buff*) ;
 TYPE_1__* dccp_sk (struct sock*) ;

__attribute__((used)) static void dccp_handle_ackvec_processing(struct sock *sk, struct sk_buff *skb)
{
 struct dccp_ackvec *av = dccp_sk(sk)->dccps_hc_rx_ackvec;

 if (av == ((void*)0))
  return;
 if (DCCP_SKB_CB(skb)->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
  dccp_ackvec_clear_state(av, DCCP_SKB_CB(skb)->dccpd_ack_seq);
 dccp_ackvec_input(av, skb);
}
