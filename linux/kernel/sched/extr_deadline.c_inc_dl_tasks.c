
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sched_dl_entity {int deadline; } ;
struct dl_rq {int dl_nr_running; } ;
struct TYPE_2__ {int prio; } ;


 int WARN_ON (int) ;
 int add_nr_running (int ,int) ;
 int dl_prio (int) ;
 TYPE_1__* dl_task_of (struct sched_dl_entity*) ;
 int inc_dl_deadline (struct dl_rq*,int ) ;
 int inc_dl_migration (struct sched_dl_entity*,struct dl_rq*) ;
 int rq_of_dl_rq (struct dl_rq*) ;

__attribute__((used)) static inline
void inc_dl_tasks(struct sched_dl_entity *dl_se, struct dl_rq *dl_rq)
{
 int prio = dl_task_of(dl_se)->prio;
 u64 deadline = dl_se->deadline;

 WARN_ON(!dl_prio(prio));
 dl_rq->dl_nr_running++;
 add_nr_running(rq_of_dl_rq(dl_rq), 1);

 inc_dl_deadline(dl_rq, deadline);
 inc_dl_migration(dl_se, dl_rq);
}
