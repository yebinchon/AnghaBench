
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int id; int destroy_rwork; int rstat_css_node; int sibling; int children; int refcnt; } ;
struct cgroup_subsys {int warned_broken_hierarchy; int name; scalar_t__ broken_hierarchy; int css_idr; struct cgroup_subsys_state* (* css_alloc ) (struct cgroup_subsys_state*) ;} ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {int pid; int comm; } ;


 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_RCU_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct cgroup_subsys_state*) ;
 struct cgroup_subsys_state* cgroup_css (struct cgroup*,struct cgroup_subsys*) ;
 int cgroup_destroy_wq ;
 int cgroup_idr_alloc (int *,int *,int,int ,int ) ;
 int cgroup_idr_replace (int *,struct cgroup_subsys_state*,int) ;
 int cgroup_mutex ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int css_free_rwork_fn ;
 int css_release ;
 TYPE_1__* current ;
 int init_and_link_css (struct cgroup_subsys_state*,struct cgroup_subsys*,struct cgroup*) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int lockdep_assert_held (int *) ;
 int online_css (struct cgroup_subsys_state*) ;
 int percpu_ref_init (int *,int ,int ,int ) ;
 int pr_warn (char*,...) ;
 int queue_rcu_work (int ,int *) ;
 int strcmp (int ,char*) ;
 struct cgroup_subsys_state* stub1 (struct cgroup_subsys_state*) ;

__attribute__((used)) static struct cgroup_subsys_state *css_create(struct cgroup *cgrp,
           struct cgroup_subsys *ss)
{
 struct cgroup *parent = cgroup_parent(cgrp);
 struct cgroup_subsys_state *parent_css = cgroup_css(parent, ss);
 struct cgroup_subsys_state *css;
 int err;

 lockdep_assert_held(&cgroup_mutex);

 css = ss->css_alloc(parent_css);
 if (!css)
  css = ERR_PTR(-ENOMEM);
 if (IS_ERR(css))
  return css;

 init_and_link_css(css, ss, cgrp);

 err = percpu_ref_init(&css->refcnt, css_release, 0, GFP_KERNEL);
 if (err)
  goto err_free_css;

 err = cgroup_idr_alloc(&ss->css_idr, ((void*)0), 2, 0, GFP_KERNEL);
 if (err < 0)
  goto err_free_css;
 css->id = err;


 list_add_tail_rcu(&css->sibling, &parent_css->children);
 cgroup_idr_replace(&ss->css_idr, css, css->id);

 err = online_css(css);
 if (err)
  goto err_list_del;

 if (ss->broken_hierarchy && !ss->warned_broken_hierarchy &&
     cgroup_parent(parent)) {
  pr_warn("%s (%d) created nested cgroup for controller \"%s\" which has incomplete hierarchy support. Nested cgroups may change behavior in the future.\n",
   current->comm, current->pid, ss->name);
  if (!strcmp(ss->name, "memory"))
   pr_warn("\"memory\" requires setting use_hierarchy to 1 on the root\n");
  ss->warned_broken_hierarchy = 1;
 }

 return css;

err_list_del:
 list_del_rcu(&css->sibling);
err_free_css:
 list_del_rcu(&css->rstat_css_node);
 INIT_RCU_WORK(&css->destroy_rwork, css_free_rwork_fn);
 queue_rcu_work(cgroup_destroy_wq, &css->destroy_rwork);
 return ERR_PTR(err);
}
