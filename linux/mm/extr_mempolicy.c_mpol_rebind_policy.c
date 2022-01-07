
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpuset_mems_allowed; } ;
struct mempolicy {int flags; size_t mode; TYPE_1__ w; } ;
typedef int nodemask_t ;
struct TYPE_4__ {int (* rebind ) (struct mempolicy*,int const*) ;} ;


 int MPOL_F_LOCAL ;
 TYPE_2__* mpol_ops ;
 int mpol_store_user_nodemask (struct mempolicy*) ;
 scalar_t__ nodes_equal (int ,int const) ;
 int stub1 (struct mempolicy*,int const*) ;

__attribute__((used)) static void mpol_rebind_policy(struct mempolicy *pol, const nodemask_t *newmask)
{
 if (!pol)
  return;
 if (!mpol_store_user_nodemask(pol) && !(pol->flags & MPOL_F_LOCAL) &&
     nodes_equal(pol->w.cpuset_mems_allowed, *newmask))
  return;

 mpol_ops[pol->mode].rebind(pol, newmask);
}
