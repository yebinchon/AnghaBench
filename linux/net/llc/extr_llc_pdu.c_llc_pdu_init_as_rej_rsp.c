
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int ctrl_1; int ctrl_2; } ;


 int LLC_2_PDU_RSP_REJ ;
 int LLC_PDU_TYPE_S ;
 int LLC_S_PF_BIT_MASK ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

void llc_pdu_init_as_rej_rsp(struct sk_buff *skb, u8 f_bit, u8 nr)
{
 struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 pdu->ctrl_1 = LLC_PDU_TYPE_S;
 pdu->ctrl_1 |= LLC_2_PDU_RSP_REJ;
 pdu->ctrl_2 = 0;
 pdu->ctrl_2 |= f_bit & LLC_S_PF_BIT_MASK;
 pdu->ctrl_1 &= 0x0F;
 pdu->ctrl_2 |= (nr << 1) & 0xFE;
}
