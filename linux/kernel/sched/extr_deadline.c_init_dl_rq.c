
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; scalar_t__ curr; } ;
struct dl_rq {scalar_t__ this_bw; scalar_t__ running_bw; int dl_bw; void* pushable_dl_tasks_root; scalar_t__ overloaded; scalar_t__ dl_nr_migratory; TYPE_1__ earliest_dl; void* root; } ;


 void* RB_ROOT_CACHED ;
 int init_dl_bw (int *) ;
 int init_dl_rq_bw_ratio (struct dl_rq*) ;

void init_dl_rq(struct dl_rq *dl_rq)
{
 dl_rq->root = RB_ROOT_CACHED;
 init_dl_bw(&dl_rq->dl_bw);


 dl_rq->running_bw = 0;
 dl_rq->this_bw = 0;
 init_dl_rq_bw_ratio(dl_rq);
}
