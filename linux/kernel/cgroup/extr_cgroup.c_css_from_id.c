
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int css_idr; } ;


 int WARN_ON_ONCE (int) ;
 struct cgroup_subsys_state* idr_find (int *,int) ;
 int rcu_read_lock_held () ;

struct cgroup_subsys_state *css_from_id(int id, struct cgroup_subsys *ss)
{
 WARN_ON_ONCE(!rcu_read_lock_held());
 return idr_find(&ss->css_idr, id);
}
