
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdi_writeback {TYPE_1__* bdi; int congested; int completions; int * stat; int dwork; } ;
struct TYPE_2__ {struct bdi_writeback wb; } ;


 int NR_WB_STAT_ITEMS ;
 int WARN_ON (int ) ;
 int bdi_put (TYPE_1__*) ;
 int delayed_work_pending (int *) ;
 int fprop_local_destroy_percpu (int *) ;
 int percpu_counter_destroy (int *) ;
 int wb_congested_put (int ) ;

__attribute__((used)) static void wb_exit(struct bdi_writeback *wb)
{
 int i;

 WARN_ON(delayed_work_pending(&wb->dwork));

 for (i = 0; i < NR_WB_STAT_ITEMS; i++)
  percpu_counter_destroy(&wb->stat[i]);

 fprop_local_destroy_percpu(&wb->completions);
 wb_congested_put(wb->congested);
 if (wb != &wb->bdi->wb)
  bdi_put(wb->bdi);
}
