
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int subtree_control; scalar_t__ nr_threaded_children; } ;


 scalar_t__ cgroup_has_tasks (struct cgroup*) ;
 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 int cgrp_dfl_threaded_ss_mask ;

bool cgroup_is_thread_root(struct cgroup *cgrp)
{

 if (cgroup_is_threaded(cgrp))
  return 0;


 if (cgrp->nr_threaded_children)
  return 1;





 if (cgroup_has_tasks(cgrp) &&
     (cgrp->subtree_control & cgrp_dfl_threaded_ss_mask))
  return 1;

 return 0;
}
