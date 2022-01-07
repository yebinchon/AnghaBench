
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {struct cgroup_subsys_state* parent; } ;


 int cgroup_assert_mutex_or_rcu_locked () ;
 struct cgroup_subsys_state* css_next_child (struct cgroup_subsys_state*,struct cgroup_subsys_state*) ;

struct cgroup_subsys_state *
css_next_descendant_pre(struct cgroup_subsys_state *pos,
   struct cgroup_subsys_state *root)
{
 struct cgroup_subsys_state *next;

 cgroup_assert_mutex_or_rcu_locked();


 if (!pos)
  return root;


 next = css_next_child(((void*)0), pos);
 if (next)
  return next;


 while (pos != root) {
  next = css_next_child(pos, pos->parent);
  if (next)
   return next;
  pos = pos->parent;
 }

 return ((void*)0);
}
