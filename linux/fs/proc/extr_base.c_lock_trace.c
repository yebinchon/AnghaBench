
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int cred_guard_mutex; } ;


 int EPERM ;
 int PTRACE_MODE_ATTACH_FSCREDS ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int ptrace_may_access (struct task_struct*,int ) ;

__attribute__((used)) static int lock_trace(struct task_struct *task)
{
 int err = mutex_lock_killable(&task->signal->cred_guard_mutex);
 if (err)
  return err;
 if (!ptrace_may_access(task, PTRACE_MODE_ATTACH_FSCREDS)) {
  mutex_unlock(&task->signal->cred_guard_mutex);
  return -EPERM;
 }
 return 0;
}
