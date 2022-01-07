
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {size_t id; } ;
struct cgroup {struct cgroup_subsys_state self; int * subsys; } ;


 int cgroup_mutex ;
 int lockdep_is_held (int *) ;
 struct cgroup_subsys_state* rcu_dereference_check (int ,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *cgroup_css(struct cgroup *cgrp,
           struct cgroup_subsys *ss)
{
 if (ss)
  return rcu_dereference_check(cgrp->subsys[ss->id],
     lockdep_is_held(&cgroup_mutex));
 else
  return &cgrp->self;
}
