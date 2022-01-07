
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thread_runtime {scalar_t__ ready_to_run; scalar_t__ last_time; scalar_t__ last_state; scalar_t__ dt_preempt; int total_preempt_time; scalar_t__ dt_iowait; int total_iowait_time; scalar_t__ dt_sleep; int total_sleep_time; scalar_t__ dt_delay; int total_delay_time; scalar_t__ dt_run; int total_run_time; int run_stats; } ;


 scalar_t__ TASK_RUNNING ;
 scalar_t__ TASK_UNINTERRUPTIBLE ;
 int pr_debug (char*) ;
 int update_stats (int *,scalar_t__) ;

__attribute__((used)) static void timehist_update_runtime_stats(struct thread_runtime *r,
      u64 t, u64 tprev)
{
 r->dt_delay = 0;
 r->dt_sleep = 0;
 r->dt_iowait = 0;
 r->dt_preempt = 0;
 r->dt_run = 0;

 if (tprev) {
  r->dt_run = t - tprev;
  if (r->ready_to_run) {
   if (r->ready_to_run > tprev)
    pr_debug("time travel: wakeup time for task > previous sched_switch event\n");
   else
    r->dt_delay = tprev - r->ready_to_run;
  }

  if (r->last_time > tprev)
   pr_debug("time travel: last sched out time for task > previous sched_switch event\n");
  else if (r->last_time) {
   u64 dt_wait = tprev - r->last_time;

   if (r->last_state == TASK_RUNNING)
    r->dt_preempt = dt_wait;
   else if (r->last_state == TASK_UNINTERRUPTIBLE)
    r->dt_iowait = dt_wait;
   else
    r->dt_sleep = dt_wait;
  }
 }

 update_stats(&r->run_stats, r->dt_run);

 r->total_run_time += r->dt_run;
 r->total_delay_time += r->dt_delay;
 r->total_sleep_time += r->dt_sleep;
 r->total_iowait_time += r->dt_iowait;
 r->total_preempt_time += r->dt_preempt;
}
