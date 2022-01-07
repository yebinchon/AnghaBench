
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_trafprm {int max_sdu; scalar_t__ max_cdv; int traffic_class; } ;





 int ATM_CELL_SIZE ;
 int ATM_MAX_AAL34_PDU ;
 int ATM_MAX_AAL5_PDU ;
 scalar_t__ ATM_MAX_CDV ;
 int EINVAL ;
 int pr_warn (char*,unsigned char) ;

__attribute__((used)) static int adjust_tp(struct atm_trafprm *tp, unsigned char aal)
{
 int max_sdu;

 if (!tp->traffic_class)
  return 0;
 switch (aal) {
 case 130:
  max_sdu = ATM_CELL_SIZE-1;
  break;
 case 129:
  max_sdu = ATM_MAX_AAL34_PDU;
  break;
 default:
  pr_warn("AAL problems ... (%d)\n", aal);

 case 128:
  max_sdu = ATM_MAX_AAL5_PDU;
 }
 if (!tp->max_sdu)
  tp->max_sdu = max_sdu;
 else if (tp->max_sdu > max_sdu)
  return -EINVAL;
 if (!tp->max_cdv)
  tp->max_cdv = ATM_MAX_CDV;
 return 0;
}
