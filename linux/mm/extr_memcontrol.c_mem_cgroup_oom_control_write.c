
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int oom_kill_disable; } ;
struct cgroup_subsys_state {int parent; } ;
struct cftype {int dummy; } ;


 int EINVAL ;
 struct mem_cgroup* mem_cgroup_from_css (struct cgroup_subsys_state*) ;
 int memcg_oom_recover (struct mem_cgroup*) ;

__attribute__((used)) static int mem_cgroup_oom_control_write(struct cgroup_subsys_state *css,
 struct cftype *cft, u64 val)
{
 struct mem_cgroup *memcg = mem_cgroup_from_css(css);


 if (!css->parent || !((val == 0) || (val == 1)))
  return -EINVAL;

 memcg->oom_kill_disable = val;
 if (!val)
  memcg_oom_recover(memcg);

 return 0;
}
