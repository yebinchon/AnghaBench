
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_un {int dummy; } ;


 scalar_t__ LLC_2_PDU_CMD_SABME ;
 scalar_t__ LLC_PDU_IS_CMD (struct llc_pdu_un const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_U (struct llc_pdu_un const*) ;
 scalar_t__ LLC_U_PDU_CMD (struct llc_pdu_un const*) ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;

int llc_conn_ev_rx_sabme_cmd_pbit_set_x(struct sock *sk, struct sk_buff *skb)
{
 const struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);

 return LLC_PDU_IS_CMD(pdu) && LLC_PDU_TYPE_IS_U(pdu) &&
        LLC_U_PDU_CMD(pdu) == LLC_2_PDU_CMD_SABME ? 0 : 1;
}
