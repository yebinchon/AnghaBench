
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_cls_state {struct cgroup_subsys_state css; } ;


 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct cgroup_cls_state* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *
cgrp_css_alloc(struct cgroup_subsys_state *parent_css)
{
 struct cgroup_cls_state *cs;

 cs = kzalloc(sizeof(*cs), GFP_KERNEL);
 if (!cs)
  return ERR_PTR(-ENOMEM);

 return &cs->css;
}
