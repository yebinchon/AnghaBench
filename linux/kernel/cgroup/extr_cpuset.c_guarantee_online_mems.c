
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int effective_mems; } ;
typedef int nodemask_t ;


 size_t N_MEMORY ;
 int * node_states ;
 int nodes_and (int ,int ,int ) ;
 int nodes_intersects (int ,int ) ;
 struct cpuset* parent_cs (struct cpuset*) ;

__attribute__((used)) static void guarantee_online_mems(struct cpuset *cs, nodemask_t *pmask)
{
 while (!nodes_intersects(cs->effective_mems, node_states[N_MEMORY]))
  cs = parent_cs(cs);
 nodes_and(*pmask, cs->effective_mems, node_states[N_MEMORY]);
}
