
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {scalar_t__ dl_runtime; int inactive_timer; scalar_t__ dl_non_contending; } ;
struct dl_rq {int dummy; } ;


 int ENQUEUE_MIGRATED ;
 int add_rq_bw (struct sched_dl_entity*,struct dl_rq*) ;
 int add_running_bw (struct sched_dl_entity*,struct dl_rq*) ;
 struct dl_rq* dl_rq_of_se (struct sched_dl_entity*) ;
 int dl_task_of (struct sched_dl_entity*) ;
 int hrtimer_try_to_cancel (int *) ;
 int put_task_struct (int ) ;

__attribute__((used)) static void task_contending(struct sched_dl_entity *dl_se, int flags)
{
 struct dl_rq *dl_rq = dl_rq_of_se(dl_se);





 if (dl_se->dl_runtime == 0)
  return;

 if (flags & ENQUEUE_MIGRATED)
  add_rq_bw(dl_se, dl_rq);

 if (dl_se->dl_non_contending) {
  dl_se->dl_non_contending = 0;







  if (hrtimer_try_to_cancel(&dl_se->inactive_timer) == 1)
   put_task_struct(dl_task_of(dl_se));
 } else {







  add_running_bw(dl_se, dl_rq);
 }
}
