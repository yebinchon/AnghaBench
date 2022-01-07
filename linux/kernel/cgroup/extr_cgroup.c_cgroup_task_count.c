
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;


 int __cgroup_task_count (struct cgroup const*) ;
 int css_set_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int cgroup_task_count(const struct cgroup *cgrp)
{
 int count;

 spin_lock_irq(&css_set_lock);
 count = __cgroup_task_count(cgrp);
 spin_unlock_irq(&css_set_lock);

 return count;
}
