
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_param {int dummy; } ;


 int _sched_setscheduler (struct task_struct*,int,struct sched_param const*,int) ;

int sched_setscheduler(struct task_struct *p, int policy,
         const struct sched_param *param)
{
 return _sched_setscheduler(p, policy, param, 1);
}
