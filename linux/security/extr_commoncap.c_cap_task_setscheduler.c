
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int cap_safe_nice (struct task_struct*) ;

int cap_task_setscheduler(struct task_struct *p)
{
 return cap_safe_nice(p);
}
