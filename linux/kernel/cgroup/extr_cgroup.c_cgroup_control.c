
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cgroup {int subtree_control; TYPE_1__* root; } ;
struct TYPE_2__ {int subsys_mask; } ;


 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 scalar_t__ cgroup_on_dfl (struct cgroup*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int cgrp_dfl_implicit_ss_mask ;
 int cgrp_dfl_inhibit_ss_mask ;
 int cgrp_dfl_threaded_ss_mask ;

__attribute__((used)) static u16 cgroup_control(struct cgroup *cgrp)
{
 struct cgroup *parent = cgroup_parent(cgrp);
 u16 root_ss_mask = cgrp->root->subsys_mask;

 if (parent) {
  u16 ss_mask = parent->subtree_control;


  if (cgroup_is_threaded(cgrp))
   ss_mask &= cgrp_dfl_threaded_ss_mask;
  return ss_mask;
 }

 if (cgroup_on_dfl(cgrp))
  root_ss_mask &= ~(cgrp_dfl_inhibit_ss_mask |
      cgrp_dfl_implicit_ss_mask);
 return root_ss_mask;
}
