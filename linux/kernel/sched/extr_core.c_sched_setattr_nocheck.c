
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_attr {int dummy; } ;


 int __sched_setscheduler (struct task_struct*,struct sched_attr const*,int,int) ;

int sched_setattr_nocheck(struct task_struct *p, const struct sched_attr *attr)
{
 return __sched_setscheduler(p, attr, 0, 1);
}
