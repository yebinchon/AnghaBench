
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int rds_ib_mr_wq ;

int rds_ib_mr_init(void)
{
 rds_ib_mr_wq = alloc_workqueue("rds_mr_flushd", WQ_MEM_RECLAIM, 0);
 if (!rds_ib_mr_wq)
  return -ENOMEM;
 return 0;
}
