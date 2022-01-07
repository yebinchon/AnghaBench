
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nodemask_scratch {int mask2; int mask1; } ;
struct TYPE_3__ {int cpuset_mems_allowed; int user_nodemask; } ;
struct mempolicy {size_t mode; int flags; TYPE_1__ w; } ;
typedef int nodemask_t ;
struct TYPE_4__ {int (* create ) (struct mempolicy*,int *) ;} ;


 int MPOL_F_RELATIVE_NODES ;
 size_t MPOL_PREFERRED ;
 size_t N_MEMORY ;
 int VM_BUG_ON (int) ;
 int const cpuset_current_mems_allowed ;
 TYPE_2__* mpol_ops ;
 int mpol_relative_nodemask (int *,int const*,int *) ;
 scalar_t__ mpol_store_user_nodemask (struct mempolicy*) ;
 int * node_states ;
 int nodes_and (int ,int const,int ) ;
 scalar_t__ nodes_empty (int const) ;
 int stub1 (struct mempolicy*,int *) ;
 int stub2 (struct mempolicy*,int *) ;

__attribute__((used)) static int mpol_set_nodemask(struct mempolicy *pol,
       const nodemask_t *nodes, struct nodemask_scratch *nsc)
{
 int ret;


 if (pol == ((void*)0))
  return 0;

 nodes_and(nsc->mask1,
    cpuset_current_mems_allowed, node_states[N_MEMORY]);

 VM_BUG_ON(!nodes);
 if (pol->mode == MPOL_PREFERRED && nodes_empty(*nodes))
  nodes = ((void*)0);
 else {
  if (pol->flags & MPOL_F_RELATIVE_NODES)
   mpol_relative_nodemask(&nsc->mask2, nodes, &nsc->mask1);
  else
   nodes_and(nsc->mask2, *nodes, nsc->mask1);

  if (mpol_store_user_nodemask(pol))
   pol->w.user_nodemask = *nodes;
  else
   pol->w.cpuset_mems_allowed =
      cpuset_current_mems_allowed;
 }

 if (nodes)
  ret = mpol_ops[pol->mode].create(pol, &nsc->mask2);
 else
  ret = mpol_ops[pol->mode].create(pol, ((void*)0));
 return ret;
}
