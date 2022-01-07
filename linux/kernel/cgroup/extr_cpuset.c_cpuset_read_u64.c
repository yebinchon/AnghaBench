
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuset {int fmeter; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef int cpuset_filetype_t ;


 int BUG () ;
 int cpuset_memory_pressure_enabled ;
 struct cpuset* css_cs (struct cgroup_subsys_state*) ;
 int fmeter_getrate (int *) ;
 int is_cpu_exclusive (struct cpuset*) ;
 int is_mem_exclusive (struct cpuset*) ;
 int is_mem_hardwall (struct cpuset*) ;
 int is_memory_migrate (struct cpuset*) ;
 int is_sched_load_balance (struct cpuset*) ;
 int is_spread_page (struct cpuset*) ;
 int is_spread_slab (struct cpuset*) ;

__attribute__((used)) static u64 cpuset_read_u64(struct cgroup_subsys_state *css, struct cftype *cft)
{
 struct cpuset *cs = css_cs(css);
 cpuset_filetype_t type = cft->private;
 switch (type) {
 case 136:
  return is_cpu_exclusive(cs);
 case 132:
  return is_mem_exclusive(cs);
 case 131:
  return is_mem_hardwall(cs);
 case 130:
  return is_sched_load_balance(cs);
 case 135:
  return is_memory_migrate(cs);
 case 133:
  return cpuset_memory_pressure_enabled;
 case 134:
  return fmeter_getrate(&cs->fmeter);
 case 129:
  return is_spread_page(cs);
 case 128:
  return is_spread_slab(cs);
 default:
  BUG();
 }


 return 0;
}
