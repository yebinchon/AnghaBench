
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_frozen_descendants; } ;
struct cgroup {scalar_t__ nr_descendants; int events_file; int flags; TYPE_1__ freezer; } ;


 int CGRP_FREEZE ;
 int CGRP_FROZEN ;
 int TRACE_CGROUP_PATH (int ,struct cgroup*,int) ;
 int cgroup_file_notify (int *) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int clear_bit (int ,int *) ;
 int notify_frozen ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void cgroup_propagate_frozen(struct cgroup *cgrp, bool frozen)
{
 int desc = 1;







 while ((cgrp = cgroup_parent(cgrp))) {
  if (frozen) {
   cgrp->freezer.nr_frozen_descendants += desc;
   if (!test_bit(CGRP_FROZEN, &cgrp->flags) &&
       test_bit(CGRP_FREEZE, &cgrp->flags) &&
       cgrp->freezer.nr_frozen_descendants ==
       cgrp->nr_descendants) {
    set_bit(CGRP_FROZEN, &cgrp->flags);
    cgroup_file_notify(&cgrp->events_file);
    TRACE_CGROUP_PATH(notify_frozen, cgrp, 1);
    desc++;
   }
  } else {
   cgrp->freezer.nr_frozen_descendants -= desc;
   if (test_bit(CGRP_FROZEN, &cgrp->flags)) {
    clear_bit(CGRP_FROZEN, &cgrp->flags);
    cgroup_file_notify(&cgrp->events_file);
    TRACE_CGROUP_PATH(notify_frozen, cgrp, 0);
    desc++;
   }
  }
 }
}
