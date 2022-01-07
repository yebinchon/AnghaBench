
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int __invalidate_reclaim_iterators (struct mem_cgroup*,struct mem_cgroup*) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 struct mem_cgroup* root_mem_cgroup ;

__attribute__((used)) static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
{
 struct mem_cgroup *memcg = dead_memcg;
 struct mem_cgroup *last;

 do {
  __invalidate_reclaim_iterators(memcg, dead_memcg);
  last = memcg;
 } while ((memcg = parent_mem_cgroup(memcg)));







 if (last != root_mem_cgroup)
  __invalidate_reclaim_iterators(root_mem_cgroup,
      dead_memcg);
}
