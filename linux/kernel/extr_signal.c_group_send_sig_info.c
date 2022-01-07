
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int check_kill_permission (int,struct kernel_siginfo*,struct task_struct*) ;
 int do_send_sig_info (int,struct kernel_siginfo*,struct task_struct*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int group_send_sig_info(int sig, struct kernel_siginfo *info,
   struct task_struct *p, enum pid_type type)
{
 int ret;

 rcu_read_lock();
 ret = check_kill_permission(sig, info, p);
 rcu_read_unlock();

 if (!ret && sig)
  ret = do_send_sig_info(sig, info, p, type);

 return ret;
}
