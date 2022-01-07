
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int ESRCH ;
 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 int send_signal (int,struct kernel_siginfo*,struct task_struct*,int) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

int do_send_sig_info(int sig, struct kernel_siginfo *info, struct task_struct *p,
   enum pid_type type)
{
 unsigned long flags;
 int ret = -ESRCH;

 if (lock_task_sighand(p, &flags)) {
  ret = send_signal(sig, info, p, type);
  unlock_task_sighand(p, &flags);
 }

 return ret;
}
