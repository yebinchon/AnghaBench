
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_reclaim_cookie {int priority; int * pgdat; } ;
struct mem_cgroup {int dummy; } ;
typedef int pg_data_t ;
typedef int gfp_t ;


 int MEM_CGROUP_MAX_RECLAIM_LOOPS ;
 struct mem_cgroup* mem_cgroup_iter (struct mem_cgroup*,struct mem_cgroup*,struct mem_cgroup_reclaim_cookie*) ;
 int mem_cgroup_iter_break (struct mem_cgroup*,struct mem_cgroup*) ;
 scalar_t__ mem_cgroup_shrink_node (struct mem_cgroup*,int ,int,int *,unsigned long*) ;
 unsigned long soft_limit_excess (struct mem_cgroup*) ;

__attribute__((used)) static int mem_cgroup_soft_reclaim(struct mem_cgroup *root_memcg,
       pg_data_t *pgdat,
       gfp_t gfp_mask,
       unsigned long *total_scanned)
{
 struct mem_cgroup *victim = ((void*)0);
 int total = 0;
 int loop = 0;
 unsigned long excess;
 unsigned long nr_scanned;
 struct mem_cgroup_reclaim_cookie reclaim = {
  .pgdat = pgdat,
  .priority = 0,
 };

 excess = soft_limit_excess(root_memcg);

 while (1) {
  victim = mem_cgroup_iter(root_memcg, victim, &reclaim);
  if (!victim) {
   loop++;
   if (loop >= 2) {





    if (!total)
     break;






    if (total >= (excess >> 2) ||
     (loop > MEM_CGROUP_MAX_RECLAIM_LOOPS))
     break;
   }
   continue;
  }
  total += mem_cgroup_shrink_node(victim, gfp_mask, 0,
     pgdat, &nr_scanned);
  *total_scanned += nr_scanned;
  if (!soft_limit_excess(root_memcg))
   break;
 }
 mem_cgroup_iter_break(root_memcg, victim);
 return total;
}
