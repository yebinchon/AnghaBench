
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int id; int rstat_css_node; int parent; int online_cnt; scalar_t__ serial_nr; int children; int sibling; struct cgroup_subsys* ss; struct cgroup* cgroup; } ;
struct cgroup_subsys {scalar_t__ css_rstat_flush; } ;
struct cgroup {int rstat_css_list; } ;


 int BUG_ON (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int cgroup_css (struct cgroup*,struct cgroup_subsys*) ;
 int cgroup_get_live (struct cgroup*) ;
 int cgroup_mutex ;
 scalar_t__ cgroup_on_dfl (struct cgroup*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int css_get (int ) ;
 int css_serial_nr_next ;
 int list_add_rcu (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int memset (struct cgroup_subsys_state*,int ,int) ;

__attribute__((used)) static void init_and_link_css(struct cgroup_subsys_state *css,
         struct cgroup_subsys *ss, struct cgroup *cgrp)
{
 lockdep_assert_held(&cgroup_mutex);

 cgroup_get_live(cgrp);

 memset(css, 0, sizeof(*css));
 css->cgroup = cgrp;
 css->ss = ss;
 css->id = -1;
 INIT_LIST_HEAD(&css->sibling);
 INIT_LIST_HEAD(&css->children);
 INIT_LIST_HEAD(&css->rstat_css_node);
 css->serial_nr = css_serial_nr_next++;
 atomic_set(&css->online_cnt, 0);

 if (cgroup_parent(cgrp)) {
  css->parent = cgroup_css(cgroup_parent(cgrp), ss);
  css_get(css->parent);
 }

 if (cgroup_on_dfl(cgrp) && ss->css_rstat_flush)
  list_add_rcu(&css->rstat_css_node, &cgrp->rstat_css_list);

 BUG_ON(cgroup_css(cgrp, ss));
}
