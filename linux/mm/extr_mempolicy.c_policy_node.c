
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_node; } ;
struct mempolicy {scalar_t__ mode; int flags; TYPE_1__ v; } ;
typedef int gfp_t ;


 scalar_t__ MPOL_BIND ;
 int MPOL_F_LOCAL ;
 scalar_t__ MPOL_PREFERRED ;
 int WARN_ON_ONCE (int) ;
 int __GFP_THISNODE ;

__attribute__((used)) static int policy_node(gfp_t gfp, struct mempolicy *policy,
        int nd)
{
 if (policy->mode == MPOL_PREFERRED && !(policy->flags & MPOL_F_LOCAL))
  nd = policy->v.preferred_node;
 else {





  WARN_ON_ONCE(policy->mode == MPOL_BIND && (gfp & __GFP_THISNODE));
 }

 return nd;
}
