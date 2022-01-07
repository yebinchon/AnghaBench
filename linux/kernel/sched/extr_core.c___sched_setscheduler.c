
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct task_struct {int sched_reset_on_fork; int policy; scalar_t__ rt_priority; int prio; struct sched_class* sched_class; int cpus_ptr; scalar_t__ mm; } ;
struct sched_class {int dummy; } ;
struct sched_attr {int sched_policy; int sched_priority; int sched_flags; scalar_t__ sched_nice; } ;
struct rq_flags {int dummy; } ;
struct rq {TYPE_3__* rd; struct task_struct* stop; } ;
typedef int cpumask_t ;
struct TYPE_6__ {scalar_t__ rt_runtime; } ;
struct TYPE_9__ {TYPE_1__ rt_bandwidth; } ;
struct TYPE_7__ {scalar_t__ bw; } ;
struct TYPE_8__ {TYPE_2__ dl_bw; int * span; } ;


 int BUG_ON (int) ;
 int CAP_SYS_NICE ;
 int DEQUEUE_MOVE ;
 int DEQUEUE_NOCLOCK ;
 int DEQUEUE_SAVE ;
 int EBUSY ;
 int EINVAL ;
 int ENQUEUE_HEAD ;
 int EPERM ;
 int MAX_DL_PRIO ;
 int MAX_RT_PRIO ;
 int MAX_USER_RT_PRIO ;
 int RLIMIT_RTPRIO ;
 int SCHED_FLAG_ALL ;
 int SCHED_FLAG_RESET_ON_FORK ;
 int SCHED_FLAG_SUGOV ;
 int SCHED_FLAG_UTIL_CLAMP ;
 int __checkparam_dl (struct sched_attr const*) ;
 int __setscheduler (struct rq*,struct task_struct*,struct sched_attr const*,int) ;
 int __setscheduler_uclamp (struct task_struct*,struct sched_attr const*) ;
 int balance_callback (struct rq*) ;
 int can_nice (struct task_struct*,scalar_t__) ;
 int capable (int ) ;
 int check_class_changed (struct rq*,struct task_struct*,struct sched_class const*,int) ;
 int check_same_owner (struct task_struct*) ;
 int cpumask_subset (int *,int ) ;
 int cpuset_read_lock () ;
 int cpuset_read_unlock () ;
 int dequeue_task (struct rq*,struct task_struct*,int) ;
 scalar_t__ dl_bandwidth_enabled () ;
 scalar_t__ dl_param_changed (struct task_struct*,struct sched_attr const*) ;
 scalar_t__ dl_policy (int) ;
 scalar_t__ dl_task (struct task_struct*) ;
 int enqueue_task (struct rq*,struct task_struct*,int) ;
 scalar_t__ fair_policy (int) ;
 int idle_policy (int) ;
 scalar_t__ in_interrupt () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_prev_task (struct rq*,struct task_struct*) ;
 scalar_t__ rt_bandwidth_enabled () ;
 int rt_effective_prio (struct task_struct*,int) ;
 int rt_mutex_adjust_pi (struct task_struct*) ;
 int rt_policy (int) ;
 scalar_t__ sched_dl_overflow (struct task_struct*,int,struct sched_attr const*) ;
 int security_task_setscheduler (struct task_struct*) ;
 int set_next_task (struct rq*,struct task_struct*) ;
 int task_current (struct rq*,struct task_struct*) ;
 TYPE_4__* task_group (struct task_struct*) ;
 int task_group_is_autogroup (TYPE_4__*) ;
 scalar_t__ task_has_idle_policy (struct task_struct*) ;
 scalar_t__ task_nice (struct task_struct*) ;
 int task_on_rq_queued (struct task_struct*) ;
 unsigned long task_rlimit (struct task_struct*,int ) ;
 struct rq* task_rq_lock (struct task_struct*,struct rq_flags*) ;
 int task_rq_unlock (struct rq*,struct task_struct*,struct rq_flags*) ;
 int uclamp_validate (struct task_struct*,struct sched_attr const*) ;
 scalar_t__ unlikely (int) ;
 int update_rq_clock (struct rq*) ;
 int valid_policy (int) ;

__attribute__((used)) static int __sched_setscheduler(struct task_struct *p,
    const struct sched_attr *attr,
    bool user, bool pi)
{
 int newprio = dl_policy(attr->sched_policy) ? MAX_DL_PRIO - 1 :
        MAX_RT_PRIO - 1 - attr->sched_priority;
 int retval, oldprio, oldpolicy = -1, queued, running;
 int new_effective_prio, policy = attr->sched_policy;
 const struct sched_class *prev_class;
 struct rq_flags rf;
 int reset_on_fork;
 int queue_flags = DEQUEUE_SAVE | DEQUEUE_MOVE | DEQUEUE_NOCLOCK;
 struct rq *rq;


 BUG_ON(pi && in_interrupt());
recheck:

 if (policy < 0) {
  reset_on_fork = p->sched_reset_on_fork;
  policy = oldpolicy = p->policy;
 } else {
  reset_on_fork = !!(attr->sched_flags & SCHED_FLAG_RESET_ON_FORK);

  if (!valid_policy(policy))
   return -EINVAL;
 }

 if (attr->sched_flags & ~(SCHED_FLAG_ALL | SCHED_FLAG_SUGOV))
  return -EINVAL;






 if ((p->mm && attr->sched_priority > MAX_USER_RT_PRIO-1) ||
     (!p->mm && attr->sched_priority > MAX_RT_PRIO-1))
  return -EINVAL;
 if ((dl_policy(policy) && !__checkparam_dl(attr)) ||
     (rt_policy(policy) != (attr->sched_priority != 0)))
  return -EINVAL;




 if (user && !capable(CAP_SYS_NICE)) {
  if (fair_policy(policy)) {
   if (attr->sched_nice < task_nice(p) &&
       !can_nice(p, attr->sched_nice))
    return -EPERM;
  }

  if (rt_policy(policy)) {
   unsigned long rlim_rtprio =
     task_rlimit(p, RLIMIT_RTPRIO);


   if (policy != p->policy && !rlim_rtprio)
    return -EPERM;


   if (attr->sched_priority > p->rt_priority &&
       attr->sched_priority > rlim_rtprio)
    return -EPERM;
  }







  if (dl_policy(policy))
   return -EPERM;





  if (task_has_idle_policy(p) && !idle_policy(policy)) {
   if (!can_nice(p, task_nice(p)))
    return -EPERM;
  }


  if (!check_same_owner(p))
   return -EPERM;


  if (p->sched_reset_on_fork && !reset_on_fork)
   return -EPERM;
 }

 if (user) {
  if (attr->sched_flags & SCHED_FLAG_SUGOV)
   return -EINVAL;

  retval = security_task_setscheduler(p);
  if (retval)
   return retval;
 }


 if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP) {
  retval = uclamp_validate(p, attr);
  if (retval)
   return retval;
 }

 if (pi)
  cpuset_read_lock();
 rq = task_rq_lock(p, &rf);
 update_rq_clock(rq);




 if (p == rq->stop) {
  retval = -EINVAL;
  goto unlock;
 }





 if (unlikely(policy == p->policy)) {
  if (fair_policy(policy) && attr->sched_nice != task_nice(p))
   goto change;
  if (rt_policy(policy) && attr->sched_priority != p->rt_priority)
   goto change;
  if (dl_policy(policy) && dl_param_changed(p, attr))
   goto change;
  if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP)
   goto change;

  p->sched_reset_on_fork = reset_on_fork;
  retval = 0;
  goto unlock;
 }
change:

 if (user) {
 }


 if (unlikely(oldpolicy != -1 && oldpolicy != p->policy)) {
  policy = oldpolicy = -1;
  task_rq_unlock(rq, p, &rf);
  if (pi)
   cpuset_read_unlock();
  goto recheck;
 }






 if ((dl_policy(policy) || dl_task(p)) && sched_dl_overflow(p, policy, attr)) {
  retval = -EBUSY;
  goto unlock;
 }

 p->sched_reset_on_fork = reset_on_fork;
 oldprio = p->prio;

 if (pi) {







  new_effective_prio = rt_effective_prio(p, newprio);
  if (new_effective_prio == oldprio)
   queue_flags &= ~DEQUEUE_MOVE;
 }

 queued = task_on_rq_queued(p);
 running = task_current(rq, p);
 if (queued)
  dequeue_task(rq, p, queue_flags);
 if (running)
  put_prev_task(rq, p);

 prev_class = p->sched_class;

 __setscheduler(rq, p, attr, pi);
 __setscheduler_uclamp(p, attr);

 if (queued) {




  if (oldprio < p->prio)
   queue_flags |= ENQUEUE_HEAD;

  enqueue_task(rq, p, queue_flags);
 }
 if (running)
  set_next_task(rq, p);

 check_class_changed(rq, p, prev_class, oldprio);


 preempt_disable();
 task_rq_unlock(rq, p, &rf);

 if (pi) {
  cpuset_read_unlock();
  rt_mutex_adjust_pi(p);
 }


 balance_callback(rq);
 preempt_enable();

 return 0;

unlock:
 task_rq_unlock(rq, p, &rf);
 if (pi)
  cpuset_read_unlock();
 return retval;
}
