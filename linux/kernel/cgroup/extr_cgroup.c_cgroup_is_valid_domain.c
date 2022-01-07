
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int dummy; } ;


 int cgroup_is_mixable (struct cgroup*) ;
 scalar_t__ cgroup_is_thread_root (struct cgroup*) ;
 scalar_t__ cgroup_is_threaded (struct cgroup*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;

__attribute__((used)) static bool cgroup_is_valid_domain(struct cgroup *cgrp)
{

 if (cgroup_is_threaded(cgrp))
  return 0;


 while ((cgrp = cgroup_parent(cgrp))) {
  if (!cgroup_is_mixable(cgrp) && cgroup_is_thread_root(cgrp))
   return 0;
  if (cgroup_is_threaded(cgrp))
   return 0;
 }

 return 1;
}
