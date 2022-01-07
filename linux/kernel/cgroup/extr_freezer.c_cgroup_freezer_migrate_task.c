
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; scalar_t__ frozen; } ;
struct cgroup {int flags; } ;


 int CGRP_FREEZE ;
 int PF_KTHREAD ;
 int cgroup_dec_frozen_cnt (struct cgroup*) ;
 int cgroup_freeze_task (struct task_struct*,int ) ;
 int cgroup_inc_frozen_cnt (struct cgroup*) ;
 int cgroup_update_frozen (struct cgroup*) ;
 int css_set_lock ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;

void cgroup_freezer_migrate_task(struct task_struct *task,
     struct cgroup *src, struct cgroup *dst)
{
 lockdep_assert_held(&css_set_lock);




 if (task->flags & PF_KTHREAD)
  return;






 if (task->frozen) {
  cgroup_inc_frozen_cnt(dst);
  cgroup_dec_frozen_cnt(src);
 }
 cgroup_update_frozen(dst);
 cgroup_update_frozen(src);




 cgroup_freeze_task(task, test_bit(CGRP_FREEZE, &dst->flags));
}
