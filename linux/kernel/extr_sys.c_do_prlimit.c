
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int group_leader; TYPE_1__* signal; int sighand; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct TYPE_2__ {struct rlimit* rlim; } ;


 int CAP_SYS_RESOURCE ;
 int CONFIG_POSIX_TIMERS ;
 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned int RLIMIT_CPU ;
 unsigned int RLIMIT_NOFILE ;
 scalar_t__ RLIM_INFINITY ;
 unsigned int RLIM_NLIMITS ;
 int capable (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int security_task_setrlimit (struct task_struct*,unsigned int,struct rlimit*) ;
 scalar_t__ sysctl_nr_open ;
 int task_lock (int ) ;
 int task_unlock (int ) ;
 int tasklist_lock ;
 int update_rlimit_cpu (struct task_struct*,scalar_t__) ;

int do_prlimit(struct task_struct *tsk, unsigned int resource,
  struct rlimit *new_rlim, struct rlimit *old_rlim)
{
 struct rlimit *rlim;
 int retval = 0;

 if (resource >= RLIM_NLIMITS)
  return -EINVAL;
 if (new_rlim) {
  if (new_rlim->rlim_cur > new_rlim->rlim_max)
   return -EINVAL;
  if (resource == RLIMIT_NOFILE &&
    new_rlim->rlim_max > sysctl_nr_open)
   return -EPERM;
 }


 read_lock(&tasklist_lock);
 if (!tsk->sighand) {
  retval = -ESRCH;
  goto out;
 }

 rlim = tsk->signal->rlim + resource;
 task_lock(tsk->group_leader);
 if (new_rlim) {


  if (new_rlim->rlim_max > rlim->rlim_max &&
    !capable(CAP_SYS_RESOURCE))
   retval = -EPERM;
  if (!retval)
   retval = security_task_setrlimit(tsk, resource, new_rlim);
 }
 if (!retval) {
  if (old_rlim)
   *old_rlim = *rlim;
  if (new_rlim)
   *rlim = *new_rlim;
 }
 task_unlock(tsk->group_leader);






  if (!retval && new_rlim && resource == RLIMIT_CPU &&
      new_rlim->rlim_cur != RLIM_INFINITY &&
      IS_ENABLED(CONFIG_POSIX_TIMERS))
  update_rlimit_cpu(tsk, new_rlim->rlim_cur);
out:
 read_unlock(&tasklist_lock);
 return retval;
}
