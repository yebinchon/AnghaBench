
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
struct sched_dl_entity {scalar_t__ dl_runtime; int dl_non_contending; scalar_t__ deadline; int runtime; int dl_period; int dl_bw; struct hrtimer inactive_timer; } ;
struct task_struct {scalar_t__ state; struct sched_dl_entity dl; } ;
struct rq {int dl; } ;
struct dl_rq {int dummy; } ;
struct dl_bw {int lock; } ;
typedef scalar_t__ s64 ;


 int HRTIMER_MODE_REL_HARD ;
 scalar_t__ TASK_DEAD ;
 int WARN_ON (int) ;
 int __dl_clear_params (struct task_struct*) ;
 int __dl_sub (struct dl_bw*,int ,int ) ;
 scalar_t__ div64_long (int,scalar_t__) ;
 int dl_bw_cpus (int ) ;
 struct dl_bw* dl_bw_of (int ) ;
 scalar_t__ dl_entity_is_special (struct sched_dl_entity*) ;
 struct dl_rq* dl_rq_of_se (struct sched_dl_entity*) ;
 scalar_t__ dl_task (struct task_struct*) ;
 int get_task_struct (struct task_struct*) ;
 scalar_t__ hrtimer_active (struct hrtimer*) ;
 int hrtimer_start (struct hrtimer*,int ,int ) ;
 int ns_to_ktime (scalar_t__) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 scalar_t__ rq_clock (struct rq*) ;
 struct rq* rq_of_dl_rq (struct dl_rq*) ;
 int sub_rq_bw (struct sched_dl_entity*,int *) ;
 int sub_running_bw (struct sched_dl_entity*,struct dl_rq*) ;
 int task_cpu (struct task_struct*) ;

__attribute__((used)) static void task_non_contending(struct task_struct *p)
{
 struct sched_dl_entity *dl_se = &p->dl;
 struct hrtimer *timer = &dl_se->inactive_timer;
 struct dl_rq *dl_rq = dl_rq_of_se(dl_se);
 struct rq *rq = rq_of_dl_rq(dl_rq);
 s64 zerolag_time;





 if (dl_se->dl_runtime == 0)
  return;

 if (dl_entity_is_special(dl_se))
  return;

 WARN_ON(dl_se->dl_non_contending);

 zerolag_time = dl_se->deadline -
   div64_long((dl_se->runtime * dl_se->dl_period),
   dl_se->dl_runtime);





 zerolag_time -= rq_clock(rq);





 if ((zerolag_time < 0) || hrtimer_active(&dl_se->inactive_timer)) {
  if (dl_task(p))
   sub_running_bw(dl_se, dl_rq);
  if (!dl_task(p) || p->state == TASK_DEAD) {
   struct dl_bw *dl_b = dl_bw_of(task_cpu(p));

   if (p->state == TASK_DEAD)
    sub_rq_bw(&p->dl, &rq->dl);
   raw_spin_lock(&dl_b->lock);
   __dl_sub(dl_b, p->dl.dl_bw, dl_bw_cpus(task_cpu(p)));
   __dl_clear_params(p);
   raw_spin_unlock(&dl_b->lock);
  }

  return;
 }

 dl_se->dl_non_contending = 1;
 get_task_struct(p);
 hrtimer_start(timer, ns_to_ktime(zerolag_time), HRTIMER_MODE_REL_HARD);
}
