
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_frozen_tasks; } ;
struct cgroup {int events_file; int flags; TYPE_1__ freezer; } ;


 int CGRP_FREEZE ;
 int CGRP_FROZEN ;
 int TRACE_CGROUP_PATH (int ,struct cgroup*,int) ;
 scalar_t__ __cgroup_task_count (struct cgroup*) ;
 int cgroup_file_notify (int *) ;
 int cgroup_propagate_frozen (struct cgroup*,int) ;
 int clear_bit (int ,int *) ;
 int css_set_lock ;
 int lockdep_assert_held (int *) ;
 int notify_frozen ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void cgroup_update_frozen(struct cgroup *cgrp)
{
 bool frozen;

 lockdep_assert_held(&css_set_lock);






 frozen = test_bit(CGRP_FREEZE, &cgrp->flags) &&
  cgrp->freezer.nr_frozen_tasks == __cgroup_task_count(cgrp);

 if (frozen) {

  if (test_bit(CGRP_FROZEN, &cgrp->flags))
   return;

  set_bit(CGRP_FROZEN, &cgrp->flags);
 } else {

  if (!test_bit(CGRP_FROZEN, &cgrp->flags))
   return;

  clear_bit(CGRP_FROZEN, &cgrp->flags);
 }
 cgroup_file_notify(&cgrp->events_file);
 TRACE_CGROUP_PATH(notify_frozen, cgrp, frozen);


 cgroup_propagate_frozen(cgrp, frozen);
}
