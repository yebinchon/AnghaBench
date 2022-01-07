
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int cfts; int id; } ;
struct cftype {char* name; int node; } ;


 int cgroup_apply_cftypes (struct cftype*,int) ;
 int cgroup_init_cftypes (struct cgroup_subsys*,struct cftype*) ;
 int cgroup_mutex ;
 int cgroup_rm_cftypes_locked (struct cftype*) ;
 int cgroup_ssid_enabled (int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cgroup_add_cftypes(struct cgroup_subsys *ss, struct cftype *cfts)
{
 int ret;

 if (!cgroup_ssid_enabled(ss->id))
  return 0;

 if (!cfts || cfts[0].name[0] == '\0')
  return 0;

 ret = cgroup_init_cftypes(ss, cfts);
 if (ret)
  return ret;

 mutex_lock(&cgroup_mutex);

 list_add_tail(&cfts->node, &ss->cfts);
 ret = cgroup_apply_cftypes(cfts, 1);
 if (ret)
  cgroup_rm_cftypes_locked(cfts);

 mutex_unlock(&cgroup_mutex);
 return ret;
}
