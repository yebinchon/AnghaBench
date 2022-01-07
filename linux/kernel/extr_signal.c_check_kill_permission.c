
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
struct kernel_siginfo {int dummy; } ;


 int EINVAL ;
 int EPERM ;

 int audit_signal_info (int,struct task_struct*) ;
 struct task_struct* current ;
 int kill_ok_by_cred (struct task_struct*) ;
 int same_thread_group (struct task_struct*,struct task_struct*) ;
 int security_task_kill (struct task_struct*,struct kernel_siginfo*,int,int *) ;
 int si_fromuser (struct kernel_siginfo*) ;
 struct pid* task_session (struct task_struct*) ;
 int valid_signal (int) ;

__attribute__((used)) static int check_kill_permission(int sig, struct kernel_siginfo *info,
     struct task_struct *t)
{
 struct pid *sid;
 int error;

 if (!valid_signal(sig))
  return -EINVAL;

 if (!si_fromuser(info))
  return 0;

 error = audit_signal_info(sig, t);
 if (error)
  return error;

 if (!same_thread_group(current, t) &&
     !kill_ok_by_cred(t)) {
  switch (sig) {
  case 128:
   sid = task_session(t);




   if (!sid || sid == task_session(current))
    break;

  default:
   return -EPERM;
  }
 }

 return security_task_kill(t, info, sig, ((void*)0));
}
