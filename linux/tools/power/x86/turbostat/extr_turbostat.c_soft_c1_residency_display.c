
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIC_CPU_c1 ;
 int DO_BIC (int ) ;
 int DO_BIC_READ (int) ;
 scalar_t__ use_c1_residency_msr ;

int soft_c1_residency_display(int bic)
{
 if (!DO_BIC(BIC_CPU_c1) || use_c1_residency_msr)
  return 0;

 return DO_BIC_READ(bic);
}
