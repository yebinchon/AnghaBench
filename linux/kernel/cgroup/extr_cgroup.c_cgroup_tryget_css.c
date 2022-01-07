
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 struct cgroup_subsys_state* cgroup_css (struct cgroup*,struct cgroup_subsys*) ;
 int css_tryget_online (struct cgroup_subsys_state*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct cgroup_subsys_state *cgroup_tryget_css(struct cgroup *cgrp,
           struct cgroup_subsys *ss)
{
 struct cgroup_subsys_state *css;

 rcu_read_lock();
 css = cgroup_css(cgrp, ss);
 if (css && !css_tryget_online(css))
  css = ((void*)0);
 rcu_read_unlock();

 return css;
}
