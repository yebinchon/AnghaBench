
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int flags; } ;
struct css_task_iter {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frozen_descendants; } ;
struct cgroup {scalar_t__ nr_descendants; TYPE_1__ freezer; int self; int flags; } ;


 int CGRP_FREEZE ;
 int PF_KTHREAD ;
 int TRACE_CGROUP_PATH (int,struct cgroup*) ;
 int cgroup_freeze_task (struct task_struct*,int) ;
 int cgroup_mutex ;
 int cgroup_update_frozen (struct cgroup*) ;
 int clear_bit (int ,int *) ;
 int css_set_lock ;
 int css_task_iter_end (struct css_task_iter*) ;
 struct task_struct* css_task_iter_next (struct css_task_iter*) ;
 int css_task_iter_start (int *,int ,struct css_task_iter*) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unfreeze ;

__attribute__((used)) static void cgroup_do_freeze(struct cgroup *cgrp, bool freeze)
{
 struct css_task_iter it;
 struct task_struct *task;

 lockdep_assert_held(&cgroup_mutex);

 spin_lock_irq(&css_set_lock);
 if (freeze)
  set_bit(CGRP_FREEZE, &cgrp->flags);
 else
  clear_bit(CGRP_FREEZE, &cgrp->flags);
 spin_unlock_irq(&css_set_lock);

 if (freeze)
  TRACE_CGROUP_PATH(freeze, cgrp);
 else
  TRACE_CGROUP_PATH(unfreeze, cgrp);

 css_task_iter_start(&cgrp->self, 0, &it);
 while ((task = css_task_iter_next(&it))) {




  if (task->flags & PF_KTHREAD)
   continue;
  cgroup_freeze_task(task, freeze);
 }
 css_task_iter_end(&it);





 spin_lock_irq(&css_set_lock);
 if (cgrp->nr_descendants == cgrp->freezer.nr_frozen_descendants)
  cgroup_update_frozen(cgrp);
 spin_unlock_irq(&css_set_lock);
}
