
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int autogroup_default ;
 int autogroup_move_group (struct task_struct*,int *) ;

void sched_autogroup_detach(struct task_struct *p)
{
 autogroup_move_group(p, &autogroup_default);
}
