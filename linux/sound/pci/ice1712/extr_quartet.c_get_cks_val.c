
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* cks_vals ;
 int* qtet_rates ;

__attribute__((used)) static int get_cks_val(int rate)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(qtet_rates); i++)
  if (qtet_rates[i] == rate)
   return cks_vals[i];
 return 0;
}
