
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodes; } ;
struct TYPE_4__ {int cpuset_mems_allowed; int user_nodemask; } ;
struct mempolicy {int flags; TYPE_1__ v; TYPE_2__ w; } ;
typedef int nodemask_t ;


 int MPOL_F_RELATIVE_NODES ;
 int MPOL_F_STATIC_NODES ;
 int mpol_relative_nodemask (int *,int *,int const*) ;
 int nodes_and (int ,int ,int const) ;
 scalar_t__ nodes_empty (int ) ;
 int nodes_remap (int ,int ,int ,int const) ;

__attribute__((used)) static void mpol_rebind_nodemask(struct mempolicy *pol, const nodemask_t *nodes)
{
 nodemask_t tmp;

 if (pol->flags & MPOL_F_STATIC_NODES)
  nodes_and(tmp, pol->w.user_nodemask, *nodes);
 else if (pol->flags & MPOL_F_RELATIVE_NODES)
  mpol_relative_nodemask(&tmp, &pol->w.user_nodemask, nodes);
 else {
  nodes_remap(tmp, pol->v.nodes,pol->w.cpuset_mems_allowed,
        *nodes);
  pol->w.cpuset_mems_allowed = *nodes;
 }

 if (nodes_empty(tmp))
  tmp = *nodes;

 pol->v.nodes = tmp;
}
