
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {scalar_t__ ack_pf; scalar_t__ ack_must_be_send; } ;


 int llc_conn_ac_send_i_cmd_p_set_0 (struct sock*,struct sk_buff*) ;
 int llc_conn_ac_send_i_rsp_f_set_ackpf (struct sock*,struct sk_buff*) ;
 struct llc_sock* llc_sk (struct sock*) ;

int llc_conn_ac_send_i_as_ack(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);
 int ret;

 if (llc->ack_must_be_send) {
  ret = llc_conn_ac_send_i_rsp_f_set_ackpf(sk, skb);
  llc->ack_must_be_send = 0 ;
  llc->ack_pf = 0;
 } else {
  ret = llc_conn_ac_send_i_cmd_p_set_0(sk, skb);
 }

 return ret;
}
