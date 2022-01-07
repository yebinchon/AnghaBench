
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_trafprm {scalar_t__ traffic_class; scalar_t__ min_pcr; scalar_t__ max_pcr; int pcr; } ;


 scalar_t__ ATM_ANYCLASS ;
 scalar_t__ ATM_MAX_PCR ;
 scalar_t__ ATM_UBR ;
 int EINVAL ;

__attribute__((used)) static int check_tp(const struct atm_trafprm *tp)
{

 if (!tp->traffic_class || tp->traffic_class == ATM_ANYCLASS)
  return 0;
 if (tp->traffic_class != ATM_UBR && !tp->min_pcr && !tp->pcr &&
     !tp->max_pcr)
  return -EINVAL;
 if (tp->min_pcr == ATM_MAX_PCR)
  return -EINVAL;
 if (tp->min_pcr && tp->max_pcr && tp->max_pcr != ATM_MAX_PCR &&
     tp->min_pcr > tp->max_pcr)
  return -EINVAL;




 return 0;
}
