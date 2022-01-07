
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * kswapd; } ;
typedef TYPE_1__ pg_data_t ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_1__* NODE_DATA (int) ;
 int PTR_ERR (int *) ;
 scalar_t__ SYSTEM_RUNNING ;
 int kswapd ;
 int * kthread_run (int ,TYPE_1__*,char*,int) ;
 int pr_err (char*,int) ;
 scalar_t__ system_state ;

int kswapd_run(int nid)
{
 pg_data_t *pgdat = NODE_DATA(nid);
 int ret = 0;

 if (pgdat->kswapd)
  return 0;

 pgdat->kswapd = kthread_run(kswapd, pgdat, "kswapd%d", nid);
 if (IS_ERR(pgdat->kswapd)) {

  BUG_ON(system_state < SYSTEM_RUNNING);
  pr_err("Failed to start kswapd on node %d\n", nid);
  ret = PTR_ERR(pgdat->kswapd);
  pgdat->kswapd = ((void*)0);
 }
 return ret;
}
