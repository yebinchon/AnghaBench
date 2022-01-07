
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cftype {int node; int ss; } ;


 int ENOENT ;
 int cgroup_apply_cftypes (struct cftype*,int) ;
 int cgroup_exit_cftypes (struct cftype*) ;
 int cgroup_mutex ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int cgroup_rm_cftypes_locked(struct cftype *cfts)
{
 lockdep_assert_held(&cgroup_mutex);

 if (!cfts || !cfts[0].ss)
  return -ENOENT;

 list_del(&cfts->node);
 cgroup_apply_cftypes(cfts, 0);
 cgroup_exit_cftypes(cfts);
 return 0;
}
