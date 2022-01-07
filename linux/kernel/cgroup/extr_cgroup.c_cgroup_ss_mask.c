
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cgroup {TYPE_1__* root; int subtree_ss_mask; } ;
struct TYPE_2__ {int subsys_mask; } ;


 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int cgrp_dfl_threaded_ss_mask ;

__attribute__((used)) static u16 cgroup_ss_mask(struct cgroup *cgrp)
{
 struct cgroup *parent = cgroup_parent(cgrp);

 if (parent) {
  u16 ss_mask = parent->subtree_ss_mask;


  if (cgroup_is_threaded(cgrp))
   ss_mask &= cgrp_dfl_threaded_ss_mask;
  return ss_mask;
 }

 return cgrp->root->subsys_mask;
}
