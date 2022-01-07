
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {int behavior; } ;
struct cgroup_subsys_state {int dummy; } ;


 int DEVCG_DEFAULT_NONE ;
 struct dev_cgroup* css_to_devcgroup (struct cgroup_subsys_state*) ;
 int devcgroup_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void devcgroup_offline(struct cgroup_subsys_state *css)
{
 struct dev_cgroup *dev_cgroup = css_to_devcgroup(css);

 mutex_lock(&devcgroup_mutex);
 dev_cgroup->behavior = DEVCG_DEFAULT_NONE;
 mutex_unlock(&devcgroup_mutex);
}
