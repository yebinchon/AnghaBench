
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int timer; } ;
struct llc_sock {TYPE_1__ busy_state_timer; scalar_t__ remote_busy_flag; } ;
struct llc_pdu_sn {int dummy; } ;


 int LLC_I_GET_NR (struct llc_pdu_sn*) ;
 int del_timer (int *) ;
 int llc_conn_resend_i_pdu_as_cmd (struct sock*,int ,int ) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 struct llc_sock* llc_sk (struct sock*) ;

int llc_conn_ac_clear_remote_busy(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 if (llc->remote_busy_flag) {
  u8 nr;
  struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

  llc->remote_busy_flag = 0;
  del_timer(&llc->busy_state_timer.timer);
  nr = LLC_I_GET_NR(pdu);
  llc_conn_resend_i_pdu_as_cmd(sk, nr, 0);
 }
 return 0;
}
