
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*) ;
 int task_getsid ;

int security_task_getsid(struct task_struct *p)
{
 return call_int_hook(task_getsid, 0, p);
}
