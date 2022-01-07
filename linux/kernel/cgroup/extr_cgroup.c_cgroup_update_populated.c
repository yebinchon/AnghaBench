
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int nr_populated_csets; int nr_populated_threaded_children; int nr_populated_domain_children; int events_file; } ;


 int TRACE_CGROUP_PATH (int ,struct cgroup*,int) ;
 int cgroup1_check_for_release (struct cgroup*) ;
 int cgroup_file_notify (int *) ;
 int cgroup_is_populated (struct cgroup*) ;
 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int css_set_lock ;
 int lockdep_assert_held (int *) ;
 int notify_populated ;

__attribute__((used)) static void cgroup_update_populated(struct cgroup *cgrp, bool populated)
{
 struct cgroup *child = ((void*)0);
 int adj = populated ? 1 : -1;

 lockdep_assert_held(&css_set_lock);

 do {
  bool was_populated = cgroup_is_populated(cgrp);

  if (!child) {
   cgrp->nr_populated_csets += adj;
  } else {
   if (cgroup_is_threaded(child))
    cgrp->nr_populated_threaded_children += adj;
   else
    cgrp->nr_populated_domain_children += adj;
  }

  if (was_populated == cgroup_is_populated(cgrp))
   break;

  cgroup1_check_for_release(cgrp);
  TRACE_CGROUP_PATH(notify_populated, cgrp,
      cgroup_is_populated(cgrp));
  cgroup_file_notify(&cgrp->events_file);

  child = cgrp;
  cgrp = cgroup_parent(cgrp);
 } while (cgrp);
}
