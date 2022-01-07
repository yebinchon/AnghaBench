
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int preferred_node; int nodes; } ;
struct TYPE_3__ {int user_nodemask; } ;
struct mempolicy {int mode; scalar_t__ flags; TYPE_2__ v; TYPE_1__ w; } ;


 int BUG () ;

 int MPOL_F_LOCAL ;


 scalar_t__ mpol_store_user_nodemask (struct mempolicy*) ;
 int nodes_equal (int ,int ) ;

bool __mpol_equal(struct mempolicy *a, struct mempolicy *b)
{
 if (!a || !b)
  return 0;
 if (a->mode != b->mode)
  return 0;
 if (a->flags != b->flags)
  return 0;
 if (mpol_store_user_nodemask(a))
  if (!nodes_equal(a->w.user_nodemask, b->w.user_nodemask))
   return 0;

 switch (a->mode) {
 case 130:

 case 129:
  return !!nodes_equal(a->v.nodes, b->v.nodes);
 case 128:

  if (a->flags & MPOL_F_LOCAL)
   return 1;
  return a->v.preferred_node == b->v.preferred_node;
 default:
  BUG();
  return 0;
 }
}
