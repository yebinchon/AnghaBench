
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct freezer {int state; } ;


 int CGROUP_FREEZING ;
 int freeze_task (struct task_struct*) ;
 int freezer_cgrp_id ;
 int freezer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ task_css_is_root (struct task_struct*,int ) ;
 struct freezer* task_freezer (struct task_struct*) ;

__attribute__((used)) static void freezer_fork(struct task_struct *task)
{
 struct freezer *freezer;
 if (task_css_is_root(task, freezer_cgrp_id))
  return;

 mutex_lock(&freezer_mutex);
 rcu_read_lock();

 freezer = task_freezer(task);
 if (freezer->state & CGROUP_FREEZING)
  freeze_task(task);

 rcu_read_unlock();
 mutex_unlock(&freezer_mutex);
}
