
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_node; } ;
struct mempolicy {TYPE_1__ v; int flags; } ;
typedef int nodemask_t ;


 int EINVAL ;
 int MPOL_F_LOCAL ;
 int first_node (int const) ;
 scalar_t__ nodes_empty (int const) ;

__attribute__((used)) static int mpol_new_preferred(struct mempolicy *pol, const nodemask_t *nodes)
{
 if (!nodes)
  pol->flags |= MPOL_F_LOCAL;
 else if (nodes_empty(*nodes))
  return -EINVAL;
 else
  pol->v.preferred_node = first_node(*nodes);
 return 0;
}
