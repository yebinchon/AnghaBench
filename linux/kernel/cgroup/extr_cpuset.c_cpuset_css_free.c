
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;


 struct cpuset* css_cs (struct cgroup_subsys_state*) ;
 int free_cpuset (struct cpuset*) ;

__attribute__((used)) static void cpuset_css_free(struct cgroup_subsys_state *css)
{
 struct cpuset *cs = css_cs(css);

 free_cpuset(cs);
}
