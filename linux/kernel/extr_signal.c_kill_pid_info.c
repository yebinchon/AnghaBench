
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
struct kernel_siginfo {int dummy; } ;


 int ESRCH ;
 int PIDTYPE_PID ;
 int PIDTYPE_TGID ;
 int group_send_sig_info (int,struct kernel_siginfo*,struct task_struct*,int ) ;
 scalar_t__ likely (int) ;
 struct task_struct* pid_task (struct pid*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int kill_pid_info(int sig, struct kernel_siginfo *info, struct pid *pid)
{
 int error = -ESRCH;
 struct task_struct *p;

 for (;;) {
  rcu_read_lock();
  p = pid_task(pid, PIDTYPE_PID);
  if (p)
   error = group_send_sig_info(sig, info, p, PIDTYPE_TGID);
  rcu_read_unlock();
  if (likely(!p || error != -ESRCH))
   return error;






 }
}
