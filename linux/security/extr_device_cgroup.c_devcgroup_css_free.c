
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;


 int __dev_exception_clean (struct dev_cgroup*) ;
 struct dev_cgroup* css_to_devcgroup (struct cgroup_subsys_state*) ;
 int kfree (struct dev_cgroup*) ;

__attribute__((used)) static void devcgroup_css_free(struct cgroup_subsys_state *css)
{
 struct dev_cgroup *dev_cgroup = css_to_devcgroup(css);

 __dev_exception_clean(dev_cgroup);
 kfree(dev_cgroup);
}
