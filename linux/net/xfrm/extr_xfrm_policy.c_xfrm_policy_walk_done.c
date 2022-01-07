
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int all; } ;
struct xfrm_policy_walk {TYPE_1__ walk; } ;
struct TYPE_4__ {int xfrm_policy_lock; } ;
struct net {TYPE_2__ xfrm; } ;


 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void xfrm_policy_walk_done(struct xfrm_policy_walk *walk, struct net *net)
{
 if (list_empty(&walk->walk.all))
  return;

 spin_lock_bh(&net->xfrm.xfrm_policy_lock);
 list_del(&walk->walk.all);
 spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
}
