
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int flags; } ;
struct cpumask {int dummy; } ;
typedef int pid_t ;
typedef int cpumask_var_t ;
struct TYPE_6__ {int user_ns; } ;
struct TYPE_5__ {TYPE_1__* rd; } ;
struct TYPE_4__ {int span; } ;


 int CAP_SYS_NICE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 long ESRCH ;
 int GFP_KERNEL ;
 int PF_NO_SETAFFINITY ;
 int __set_cpus_allowed_ptr (struct task_struct*,int ,int) ;
 TYPE_3__* __task_cred (struct task_struct*) ;
 int alloc_cpumask_var (int *,int ) ;
 int check_same_owner (struct task_struct*) ;
 int cpumask_and (int ,struct cpumask const*,int ) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_subset (int ,int ) ;
 int cpuset_cpus_allowed (struct task_struct*,int ) ;
 scalar_t__ dl_bandwidth_enabled () ;
 struct task_struct* find_process_by_pid (int ) ;
 int free_cpumask_var (int ) ;
 int get_task_struct (struct task_struct*) ;
 int ns_capable (int ,int ) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_setscheduler (struct task_struct*) ;
 scalar_t__ task_has_dl_policy (struct task_struct*) ;
 TYPE_2__* task_rq (struct task_struct*) ;

long sched_setaffinity(pid_t pid, const struct cpumask *in_mask)
{
 cpumask_var_t cpus_allowed, new_mask;
 struct task_struct *p;
 int retval;

 rcu_read_lock();

 p = find_process_by_pid(pid);
 if (!p) {
  rcu_read_unlock();
  return -ESRCH;
 }


 get_task_struct(p);
 rcu_read_unlock();

 if (p->flags & PF_NO_SETAFFINITY) {
  retval = -EINVAL;
  goto out_put_task;
 }
 if (!alloc_cpumask_var(&cpus_allowed, GFP_KERNEL)) {
  retval = -ENOMEM;
  goto out_put_task;
 }
 if (!alloc_cpumask_var(&new_mask, GFP_KERNEL)) {
  retval = -ENOMEM;
  goto out_free_cpus_allowed;
 }
 retval = -EPERM;
 if (!check_same_owner(p)) {
  rcu_read_lock();
  if (!ns_capable(__task_cred(p)->user_ns, CAP_SYS_NICE)) {
   rcu_read_unlock();
   goto out_free_new_mask;
  }
  rcu_read_unlock();
 }

 retval = security_task_setscheduler(p);
 if (retval)
  goto out_free_new_mask;


 cpuset_cpus_allowed(p, cpus_allowed);
 cpumask_and(new_mask, in_mask, cpus_allowed);
again:
 retval = __set_cpus_allowed_ptr(p, new_mask, 1);

 if (!retval) {
  cpuset_cpus_allowed(p, cpus_allowed);
  if (!cpumask_subset(new_mask, cpus_allowed)) {





   cpumask_copy(new_mask, cpus_allowed);
   goto again;
  }
 }
out_free_new_mask:
 free_cpumask_var(new_mask);
out_free_cpus_allowed:
 free_cpumask_var(cpus_allowed);
out_put_task:
 put_task_struct(p);
 return retval;
}
