
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int __mem_cgroup_threshold (struct mem_cgroup*,int) ;
 scalar_t__ do_memsw_account () ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;

__attribute__((used)) static void mem_cgroup_threshold(struct mem_cgroup *memcg)
{
 while (memcg) {
  __mem_cgroup_threshold(memcg, 0);
  if (do_memsw_account())
   __mem_cgroup_threshold(memcg, 1);

  memcg = parent_mem_cgroup(memcg);
 }
}
