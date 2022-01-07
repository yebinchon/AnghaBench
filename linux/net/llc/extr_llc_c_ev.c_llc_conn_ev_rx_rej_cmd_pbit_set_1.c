
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;


 scalar_t__ LLC_2_PDU_CMD_REJ ;
 scalar_t__ LLC_PDU_IS_CMD (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_S (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_S_PDU_CMD (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_S_PF_IS_1 (struct llc_pdu_sn const*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

int llc_conn_ev_rx_rej_cmd_pbit_set_1(struct sock *sk, struct sk_buff *skb)
{
 const struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 return LLC_PDU_IS_CMD(pdu) && LLC_PDU_TYPE_IS_S(pdu) &&
        LLC_S_PF_IS_1(pdu) &&
        LLC_S_PDU_CMD(pdu) == LLC_2_PDU_CMD_REJ ? 0 : 1;
}
