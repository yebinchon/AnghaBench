
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state_walk {int all; int filter; } ;
struct TYPE_2__ {int xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int kfree (int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void xfrm_state_walk_done(struct xfrm_state_walk *walk, struct net *net)
{
 kfree(walk->filter);

 if (list_empty(&walk->all))
  return;

 spin_lock_bh(&net->xfrm.xfrm_state_lock);
 list_del(&walk->all);
 spin_unlock_bh(&net->xfrm.xfrm_state_lock);
}
