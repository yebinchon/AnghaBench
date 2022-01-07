
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {scalar_t__ subtree_control; int dom_cgrp; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 scalar_t__ cgroup_can_be_thread_root (struct cgroup*) ;
 scalar_t__ cgroup_is_mixable (struct cgroup*) ;
 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 int cgroup_is_valid_domain (int ) ;
 int cgroup_on_dfl (struct cgroup*) ;

int cgroup_migrate_vet_dst(struct cgroup *dst_cgrp)
{

 if (!cgroup_on_dfl(dst_cgrp))
  return 0;


 if (!cgroup_is_valid_domain(dst_cgrp->dom_cgrp))
  return -EOPNOTSUPP;


 if (cgroup_is_mixable(dst_cgrp))
  return 0;





 if (cgroup_can_be_thread_root(dst_cgrp) || cgroup_is_threaded(dst_cgrp))
  return 0;


 if (dst_cgrp->subtree_control)
  return -EBUSY;

 return 0;
}
