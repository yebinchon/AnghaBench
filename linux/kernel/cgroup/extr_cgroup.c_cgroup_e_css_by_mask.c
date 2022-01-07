
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int id; } ;
struct cgroup {struct cgroup_subsys_state self; } ;


 struct cgroup_subsys_state* cgroup_css (struct cgroup*,struct cgroup_subsys*) ;
 int cgroup_mutex ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int cgroup_ss_mask (struct cgroup*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct cgroup_subsys_state *cgroup_e_css_by_mask(struct cgroup *cgrp,
       struct cgroup_subsys *ss)
{
 lockdep_assert_held(&cgroup_mutex);

 if (!ss)
  return &cgrp->self;





 while (!(cgroup_ss_mask(cgrp) & (1 << ss->id))) {
  cgrp = cgroup_parent(cgrp);
  if (!cgrp)
   return ((void*)0);
 }

 return cgroup_css(cgrp, ss);
}
