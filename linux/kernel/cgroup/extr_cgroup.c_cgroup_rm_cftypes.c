
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cftype {int dummy; } ;


 int cgroup_mutex ;
 int cgroup_rm_cftypes_locked (struct cftype*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cgroup_rm_cftypes(struct cftype *cfts)
{
 int ret;

 mutex_lock(&cgroup_mutex);
 ret = cgroup_rm_cftypes_locked(cfts);
 mutex_unlock(&cgroup_mutex);
 return ret;
}
