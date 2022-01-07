
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int * roce_pd; } ;


 int ib_dealloc_pd (int *) ;

void smc_ib_dealloc_protection_domain(struct smc_link *lnk)
{
 if (lnk->roce_pd)
  ib_dealloc_pd(lnk->roce_pd);
 lnk->roce_pd = ((void*)0);
}
