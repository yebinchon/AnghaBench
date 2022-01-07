
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct llc_pdu_un {int ctrl_1; } ;


 int LLC_2_PDU_RSP_UA ;
 int LLC_PDU_TYPE_U ;
 int LLC_U_PF_BIT_MASK ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;

void llc_pdu_init_as_ua_rsp(struct sk_buff *skb, u8 f_bit)
{
 struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);

 pdu->ctrl_1 = LLC_PDU_TYPE_U;
 pdu->ctrl_1 |= LLC_2_PDU_RSP_UA;
 pdu->ctrl_1 |= ((f_bit & 1) << 4) & LLC_U_PF_BIT_MASK;
}
