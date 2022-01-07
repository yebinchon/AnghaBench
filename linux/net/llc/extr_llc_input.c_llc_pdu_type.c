
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int ctrl_1; } ;
 int LLC_DEST_CONN ;
 int LLC_DEST_INVALID ;
 int LLC_DEST_SAP ;
 int LLC_PDU_TYPE_MASK ;
 int LLC_PDU_TYPE_U ;
 int LLC_U_PDU_CMD (struct llc_pdu_sn*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;

__attribute__((used)) static __inline__ int llc_pdu_type(struct sk_buff *skb)
{
 int type = LLC_DEST_CONN;
 struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

 if ((pdu->ctrl_1 & LLC_PDU_TYPE_MASK) != LLC_PDU_TYPE_U)
  goto out;
 switch (LLC_U_PDU_CMD(pdu)) {
 case 133:
 case 134:
 case 135:
  type = LLC_DEST_SAP;
  break;
 case 131:
 case 132:
 case 128:
 case 130:
 case 129:
  break;
 default:
  type = LLC_DEST_INVALID;
  break;
 }
out:
 return type;
}
