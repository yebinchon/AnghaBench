
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;


 struct cgroup_subsys_state* css_next_child (int *,struct cgroup_subsys_state*) ;

__attribute__((used)) static struct cgroup_subsys_state *
css_leftmost_descendant(struct cgroup_subsys_state *pos)
{
 struct cgroup_subsys_state *last;

 do {
  last = pos;
  pos = css_next_child(((void*)0), pos);
 } while (pos);

 return last;
}
