
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*,int) ;
 int task_setnice ;

int security_task_setnice(struct task_struct *p, int nice)
{
 return call_int_hook(task_setnice, 0, p, nice);
}
