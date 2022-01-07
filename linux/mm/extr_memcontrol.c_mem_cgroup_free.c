
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;


 int __mem_cgroup_free (struct mem_cgroup*) ;
 int memcg_flush_percpu_vmevents (struct mem_cgroup*) ;
 int memcg_flush_percpu_vmstats (struct mem_cgroup*,int) ;
 int memcg_wb_domain_exit (struct mem_cgroup*) ;

__attribute__((used)) static void mem_cgroup_free(struct mem_cgroup *memcg)
{
 memcg_wb_domain_exit(memcg);




 memcg_flush_percpu_vmstats(memcg, 0);
 memcg_flush_percpu_vmevents(memcg);
 __mem_cgroup_free(memcg);
}
