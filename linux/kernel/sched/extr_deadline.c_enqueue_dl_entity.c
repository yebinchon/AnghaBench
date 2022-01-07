
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int deadline; } ;


 int BUG_ON (int ) ;
 int ENQUEUE_REPLENISH ;
 int ENQUEUE_RESTORE ;
 int ENQUEUE_WAKEUP ;
 int __enqueue_dl_entity (struct sched_dl_entity*) ;
 int dl_rq_of_se (struct sched_dl_entity*) ;
 scalar_t__ dl_time_before (int ,int ) ;
 int on_dl_rq (struct sched_dl_entity*) ;
 int replenish_dl_entity (struct sched_dl_entity*,struct sched_dl_entity*) ;
 int rq_clock (int ) ;
 int rq_of_dl_rq (int ) ;
 int setup_new_dl_entity (struct sched_dl_entity*) ;
 int task_contending (struct sched_dl_entity*,int) ;
 int update_dl_entity (struct sched_dl_entity*,struct sched_dl_entity*) ;

__attribute__((used)) static void
enqueue_dl_entity(struct sched_dl_entity *dl_se,
    struct sched_dl_entity *pi_se, int flags)
{
 BUG_ON(on_dl_rq(dl_se));






 if (flags & ENQUEUE_WAKEUP) {
  task_contending(dl_se, flags);
  update_dl_entity(dl_se, pi_se);
 } else if (flags & ENQUEUE_REPLENISH) {
  replenish_dl_entity(dl_se, pi_se);
 } else if ((flags & ENQUEUE_RESTORE) &&
    dl_time_before(dl_se->deadline,
     rq_clock(rq_of_dl_rq(dl_rq_of_se(dl_se))))) {
  setup_new_dl_entity(dl_se);
 }

 __enqueue_dl_entity(dl_se);
}
