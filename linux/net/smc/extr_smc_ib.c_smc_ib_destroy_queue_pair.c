
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int * roce_qp; } ;


 int ib_destroy_qp (int *) ;

void smc_ib_destroy_queue_pair(struct smc_link *lnk)
{
 if (lnk->roce_qp)
  ib_destroy_qp(lnk->roce_qp);
 lnk->roce_qp = ((void*)0);
}
