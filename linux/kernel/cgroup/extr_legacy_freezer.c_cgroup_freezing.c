
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int CGROUP_FREEZING ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_1__* task_freezer (struct task_struct*) ;

bool cgroup_freezing(struct task_struct *task)
{
 bool ret;

 rcu_read_lock();
 ret = task_freezer(task)->state & CGROUP_FREEZING;
 rcu_read_unlock();

 return ret;
}
