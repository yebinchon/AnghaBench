
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*,struct kernel_siginfo*,int,struct cred const*) ;
 int task_kill ;

int security_task_kill(struct task_struct *p, struct kernel_siginfo *info,
   int sig, const struct cred *cred)
{
 return call_int_hook(task_kill, 0, p, info, sig, cred);
}
