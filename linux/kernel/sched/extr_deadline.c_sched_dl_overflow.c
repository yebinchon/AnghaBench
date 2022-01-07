
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ dl_bw; int inactive_timer; } ;
struct task_struct {TYPE_1__ dl; } ;
struct sched_attr {scalar_t__ sched_deadline; scalar_t__ sched_runtime; int sched_flags; scalar_t__ sched_period; } ;
struct dl_bw {int lock; } ;


 int SCHED_FLAG_SUGOV ;
 int __dl_add (struct dl_bw*,scalar_t__,int) ;
 int __dl_overflow (struct dl_bw*,int,scalar_t__,scalar_t__) ;
 int __dl_sub (struct dl_bw*,scalar_t__,int) ;
 int dl_bw_cpus (int ) ;
 struct dl_bw* dl_bw_of (int ) ;
 int dl_change_utilization (struct task_struct*,scalar_t__) ;
 scalar_t__ dl_policy (int) ;
 scalar_t__ hrtimer_active (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int task_cpu (struct task_struct*) ;
 scalar_t__ task_has_dl_policy (struct task_struct*) ;
 scalar_t__ to_ratio (scalar_t__,scalar_t__) ;

int sched_dl_overflow(struct task_struct *p, int policy,
        const struct sched_attr *attr)
{
 struct dl_bw *dl_b = dl_bw_of(task_cpu(p));
 u64 period = attr->sched_period ?: attr->sched_deadline;
 u64 runtime = attr->sched_runtime;
 u64 new_bw = dl_policy(policy) ? to_ratio(period, runtime) : 0;
 int cpus, err = -1;

 if (attr->sched_flags & SCHED_FLAG_SUGOV)
  return 0;


 if (new_bw == p->dl.dl_bw && task_has_dl_policy(p))
  return 0;






 raw_spin_lock(&dl_b->lock);
 cpus = dl_bw_cpus(task_cpu(p));
 if (dl_policy(policy) && !task_has_dl_policy(p) &&
     !__dl_overflow(dl_b, cpus, 0, new_bw)) {
  if (hrtimer_active(&p->dl.inactive_timer))
   __dl_sub(dl_b, p->dl.dl_bw, cpus);
  __dl_add(dl_b, new_bw, cpus);
  err = 0;
 } else if (dl_policy(policy) && task_has_dl_policy(p) &&
     !__dl_overflow(dl_b, cpus, p->dl.dl_bw, new_bw)) {







  __dl_sub(dl_b, p->dl.dl_bw, cpus);
  __dl_add(dl_b, new_bw, cpus);
  dl_change_utilization(p, new_bw);
  err = 0;
 } else if (!dl_policy(policy) && task_has_dl_policy(p)) {





  err = 0;
 }
 raw_spin_unlock(&dl_b->lock);

 return err;
}
