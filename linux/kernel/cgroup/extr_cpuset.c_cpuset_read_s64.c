
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int relax_domain_level; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef int s64 ;
typedef int cpuset_filetype_t ;


 int BUG () ;

 struct cpuset* css_cs (struct cgroup_subsys_state*) ;

__attribute__((used)) static s64 cpuset_read_s64(struct cgroup_subsys_state *css, struct cftype *cft)
{
 struct cpuset *cs = css_cs(css);
 cpuset_filetype_t type = cft->private;
 switch (type) {
 case 128:
  return cs->relax_domain_level;
 default:
  BUG();
 }


 return 0;
}
