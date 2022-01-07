
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;


 int call_int_hook (int ,int ,struct task_struct*,int ) ;
 int task_setpgid ;

int security_task_setpgid(struct task_struct *p, pid_t pgid)
{
 return call_int_hook(task_setpgid, 0, p, pgid);
}
