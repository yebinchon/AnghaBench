
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int rds_ib_mr_wq ;

void rds_ib_mr_exit(void)
{
 destroy_workqueue(rds_ib_mr_wq);
}
