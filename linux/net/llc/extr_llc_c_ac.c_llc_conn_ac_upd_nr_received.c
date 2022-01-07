
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ expire; int timer; } ;
struct llc_sock {scalar_t__ failed_data_req; TYPE_2__ ack_timer; scalar_t__ retry_count; TYPE_1__* dev; int last_nr; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int IFF_LOOPBACK ;
 int PDU_SUPV_GET_Nr (struct llc_pdu_sn*) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int llc_conn_ac_data_confirm (struct sock*,struct sk_buff*) ;
 int llc_conn_remove_acked_pdus (struct sock*,int ,scalar_t__*) ;
 int llc_pdu_decode_pf_bit (struct sk_buff*,int*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int mod_timer (int *,scalar_t__) ;

int llc_conn_ac_upd_nr_received(struct sock *sk, struct sk_buff *skb)
{
 int acked;
 u16 unacked = 0;
 struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);
 struct llc_sock *llc = llc_sk(sk);

 llc->last_nr = PDU_SUPV_GET_Nr(pdu);
 acked = llc_conn_remove_acked_pdus(sk, llc->last_nr, &unacked);

 if (acked > 0 || (llc->dev->flags & IFF_LOOPBACK)) {
  llc->retry_count = 0;
  del_timer(&llc->ack_timer.timer);
  if (llc->failed_data_req) {




   llc->failed_data_req = 0;
   llc_conn_ac_data_confirm(sk, skb);
  }
  if (unacked)
   mod_timer(&llc->ack_timer.timer,
      jiffies + llc->ack_timer.expire);
 } else if (llc->failed_data_req) {
  u8 f_bit;

  llc_pdu_decode_pf_bit(skb, &f_bit);
  if (f_bit == 1) {
   llc->failed_data_req = 0;
   llc_conn_ac_data_confirm(sk, skb);
  }
 }
 return 0;
}
