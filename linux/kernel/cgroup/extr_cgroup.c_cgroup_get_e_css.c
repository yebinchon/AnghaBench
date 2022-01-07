
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {size_t id; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup_subsys_state** subsys; } ;


 struct cgroup_subsys_state* cgroup_css (struct cgroup*,struct cgroup_subsys*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int css_get (struct cgroup_subsys_state*) ;
 scalar_t__ css_tryget_online (struct cgroup_subsys_state*) ;
 TYPE_1__ init_css_set ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct cgroup_subsys_state *cgroup_get_e_css(struct cgroup *cgrp,
          struct cgroup_subsys *ss)
{
 struct cgroup_subsys_state *css;

 rcu_read_lock();

 do {
  css = cgroup_css(cgrp, ss);

  if (css && css_tryget_online(css))
   goto out_unlock;
  cgrp = cgroup_parent(cgrp);
 } while (cgrp);

 css = init_css_set.subsys[ss->id];
 css_get(css);
out_unlock:
 rcu_read_unlock();
 return css;
}
