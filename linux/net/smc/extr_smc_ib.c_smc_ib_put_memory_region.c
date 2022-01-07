
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mr {int dummy; } ;


 int ib_dereg_mr (struct ib_mr*) ;

void smc_ib_put_memory_region(struct ib_mr *mr)
{
 ib_dereg_mr(mr);
}
