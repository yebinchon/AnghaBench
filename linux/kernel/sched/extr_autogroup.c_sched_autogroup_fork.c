
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_struct {int autogroup; } ;


 int autogroup_task_get (int ) ;
 int current ;

void sched_autogroup_fork(struct signal_struct *sig)
{
 sig->autogroup = autogroup_task_get(current);
}
