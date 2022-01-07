
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;


 int EINVAL ;
 int PIDTYPE_PID ;
 int do_send_sig_info (int,struct kernel_siginfo*,struct task_struct*,int ) ;
 int valid_signal (int) ;

int send_sig_info(int sig, struct kernel_siginfo *info, struct task_struct *p)
{




 if (!valid_signal(sig))
  return -EINVAL;

 return do_send_sig_info(sig, info, p, PIDTYPE_PID);
}
