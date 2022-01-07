
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;


 struct mem_cgroup* mem_cgroup_from_css (struct cgroup_subsys_state*) ;
 int mem_cgroup_swappiness (struct mem_cgroup*) ;

__attribute__((used)) static u64 mem_cgroup_swappiness_read(struct cgroup_subsys_state *css,
          struct cftype *cft)
{
 struct mem_cgroup *memcg = mem_cgroup_from_css(css);

 return mem_cgroup_swappiness(memcg);
}
