
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_link {int * roce_pd; TYPE_1__* smcibdev; } ;
struct TYPE_2__ {int ibdev; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR_OR_ZERO (int *) ;
 int * ib_alloc_pd (int ,int ) ;

int smc_ib_create_protection_domain(struct smc_link *lnk)
{
 int rc;

 lnk->roce_pd = ib_alloc_pd(lnk->smcibdev->ibdev, 0);
 rc = PTR_ERR_OR_ZERO(lnk->roce_pd);
 if (IS_ERR(lnk->roce_pd))
  lnk->roce_pd = ((void*)0);
 return rc;
}
