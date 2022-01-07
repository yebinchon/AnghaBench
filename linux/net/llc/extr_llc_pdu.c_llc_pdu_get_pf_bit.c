
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct llc_pdu_sn {int ctrl_1; int ctrl_2; } ;





 int LLC_S_PF_BIT_MASK ;
 int LLC_U_PF_BIT_MASK ;

__attribute__((used)) static u8 llc_pdu_get_pf_bit(struct llc_pdu_sn *pdu)
{
 u8 pdu_type;
 u8 pf_bit = 0;

 if (pdu->ctrl_1 & 1) {
  if ((pdu->ctrl_1 & 128) == 128)
   pdu_type = 128;
  else
   pdu_type = 129;
 } else
  pdu_type = 130;
 switch (pdu_type) {
 case 130:
 case 129:
  pf_bit = pdu->ctrl_2 & LLC_S_PF_BIT_MASK;
  break;
 case 128:
  pf_bit = (pdu->ctrl_1 & LLC_U_PF_BIT_MASK) >> 4;
  break;
 }
 return pf_bit;
}
