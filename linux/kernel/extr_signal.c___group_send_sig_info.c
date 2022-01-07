
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;


 int PIDTYPE_TGID ;
 int send_signal (int,struct kernel_siginfo*,struct task_struct*,int ) ;

int
__group_send_sig_info(int sig, struct kernel_siginfo *info, struct task_struct *p)
{
 return send_signal(sig, info, p, PIDTYPE_TGID);
}
