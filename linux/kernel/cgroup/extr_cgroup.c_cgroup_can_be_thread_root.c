
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int subtree_control; scalar_t__ nr_populated_domain_children; } ;


 scalar_t__ cgroup_is_mixable (struct cgroup*) ;
 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 int cgrp_dfl_threaded_ss_mask ;

__attribute__((used)) static bool cgroup_can_be_thread_root(struct cgroup *cgrp)
{

 if (cgroup_is_mixable(cgrp))
  return 1;


 if (cgroup_is_threaded(cgrp))
  return 0;


 if (cgrp->nr_populated_domain_children)
  return 0;


 if (cgrp->subtree_control & ~cgrp_dfl_threaded_ss_mask)
  return 0;

 return 1;
}
