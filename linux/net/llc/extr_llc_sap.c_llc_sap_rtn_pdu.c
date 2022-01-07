
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_sap_state_ev {int ind_cfm_flag; int prim; } ;
struct llc_sap {int dummy; } ;
struct llc_pdu_un {int dummy; } ;





 int LLC_DATAUNIT_PRIM ;
 int LLC_IND ;
 int LLC_TEST_PRIM ;
 int LLC_U_PDU_RSP (struct llc_pdu_un*) ;
 int LLC_XID_PRIM ;
 struct llc_pdu_un* llc_pdu_un_hdr (struct sk_buff*) ;
 struct llc_sap_state_ev* llc_sap_ev (struct sk_buff*) ;

void llc_sap_rtn_pdu(struct llc_sap *sap, struct sk_buff *skb)
{
 struct llc_sap_state_ev *ev = llc_sap_ev(skb);
 struct llc_pdu_un *pdu = llc_pdu_un_hdr(skb);

 switch (LLC_U_PDU_RSP(pdu)) {
 case 130:
  ev->prim = LLC_TEST_PRIM; break;
 case 128:
  ev->prim = LLC_XID_PRIM; break;
 case 129:
  ev->prim = LLC_DATAUNIT_PRIM; break;
 }
 ev->ind_cfm_flag = LLC_IND;
}
