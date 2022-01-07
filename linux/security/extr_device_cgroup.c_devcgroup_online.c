
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {int behavior; int exceptions; } ;
struct cgroup_subsys_state {struct cgroup_subsys_state* parent; } ;


 int DEVCG_DEFAULT_ALLOW ;
 struct dev_cgroup* css_to_devcgroup (struct cgroup_subsys_state*) ;
 int dev_exceptions_copy (int *,int *) ;
 int devcgroup_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int devcgroup_online(struct cgroup_subsys_state *css)
{
 struct dev_cgroup *dev_cgroup = css_to_devcgroup(css);
 struct dev_cgroup *parent_dev_cgroup = css_to_devcgroup(css->parent);
 int ret = 0;

 mutex_lock(&devcgroup_mutex);

 if (parent_dev_cgroup == ((void*)0))
  dev_cgroup->behavior = DEVCG_DEFAULT_ALLOW;
 else {
  ret = dev_exceptions_copy(&dev_cgroup->exceptions,
       &parent_dev_cgroup->exceptions);
  if (!ret)
   dev_cgroup->behavior = parent_dev_cgroup->behavior;
 }
 mutex_unlock(&devcgroup_mutex);

 return ret;
}
