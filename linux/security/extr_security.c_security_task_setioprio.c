
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*,int) ;
 int task_setioprio ;

int security_task_setioprio(struct task_struct *p, int ioprio)
{
 return call_int_hook(task_setioprio, 0, p, ioprio);
}
