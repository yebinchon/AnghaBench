
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ARRAY_SIZE (unsigned char*) ;
 unsigned char CPLD_CKS_MASK ;
 unsigned char* cks_vals ;
 unsigned char get_cpld (struct snd_ice1712*) ;
 unsigned int* qtet_rates ;

__attribute__((used)) static unsigned int qtet_get_rate(struct snd_ice1712 *ice)
{
 int i;
 unsigned char result;

 result = get_cpld(ice) & CPLD_CKS_MASK;
 for (i = 0; i < ARRAY_SIZE(cks_vals); i++)
  if (cks_vals[i] == result)
   return qtet_rates[i];
 return 0;
}
