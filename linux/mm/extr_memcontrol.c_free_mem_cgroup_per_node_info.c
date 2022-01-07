
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_per_node {int lruvec_stat_local; int lruvec_stat_cpu; } ;
struct mem_cgroup {struct mem_cgroup_per_node** nodeinfo; } ;


 int free_percpu (int ) ;
 int kfree (struct mem_cgroup_per_node*) ;

__attribute__((used)) static void free_mem_cgroup_per_node_info(struct mem_cgroup *memcg, int node)
{
 struct mem_cgroup_per_node *pn = memcg->nodeinfo[node];

 if (!pn)
  return;

 free_percpu(pn->lruvec_stat_cpu);
 free_percpu(pn->lruvec_stat_local);
 kfree(pn);
}
