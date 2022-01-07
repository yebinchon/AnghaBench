
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int rds_wq ;

void rds_threads_exit(void)
{
 destroy_workqueue(rds_wq);
}
