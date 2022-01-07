
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
 TYPE_1__ init_css_set ;

struct cgroup_subsys_state *cgroup_e_css(struct cgroup *cgrp,
      struct cgroup_subsys *ss)
{
 struct cgroup_subsys_state *css;

 do {
  css = cgroup_css(cgrp, ss);

  if (css)
   return css;
  cgrp = cgroup_parent(cgrp);
 } while (cgrp);

 return init_css_set.subsys[ss->id];
}
