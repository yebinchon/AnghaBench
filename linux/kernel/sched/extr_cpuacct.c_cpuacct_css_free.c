
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuacct {int cpuusage; int cpustat; } ;
struct cgroup_subsys_state {int dummy; } ;


 struct cpuacct* css_ca (struct cgroup_subsys_state*) ;
 int free_percpu (int ) ;
 int kfree (struct cpuacct*) ;

__attribute__((used)) static void cpuacct_css_free(struct cgroup_subsys_state *css)
{
 struct cpuacct *ca = css_ca(css);

 free_percpu(ca->cpustat);
 free_percpu(ca->cpuusage);
 kfree(ca);
}
