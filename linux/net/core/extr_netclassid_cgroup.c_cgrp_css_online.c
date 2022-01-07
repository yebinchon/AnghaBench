
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {struct cgroup_subsys_state* parent; } ;
struct cgroup_cls_state {int classid; } ;


 struct cgroup_cls_state* css_cls_state (struct cgroup_subsys_state*) ;

__attribute__((used)) static int cgrp_css_online(struct cgroup_subsys_state *css)
{
 struct cgroup_cls_state *cs = css_cls_state(css);
 struct cgroup_cls_state *parent = css_cls_state(css->parent);

 if (parent)
  cs->classid = parent->classid;

 return 0;
}
