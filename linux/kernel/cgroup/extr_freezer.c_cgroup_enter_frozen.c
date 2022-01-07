
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cgroup {int dummy; } ;
struct TYPE_3__ {int frozen; } ;


 int cgroup_inc_frozen_cnt (struct cgroup*) ;
 int cgroup_update_frozen (struct cgroup*) ;
 int css_set_lock ;
 TYPE_1__* current ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cgroup* task_dfl_cgroup (TYPE_1__*) ;

void cgroup_enter_frozen(void)
{
 struct cgroup *cgrp;

 if (current->frozen)
  return;

 spin_lock_irq(&css_set_lock);
 current->frozen = 1;
 cgrp = task_dfl_cgroup(current);
 cgroup_inc_frozen_cnt(cgrp);
 cgroup_update_frozen(cgrp);
 spin_unlock_irq(&css_set_lock);
}
