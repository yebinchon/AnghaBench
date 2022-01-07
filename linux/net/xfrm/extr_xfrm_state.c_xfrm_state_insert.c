
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct TYPE_2__ {int xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int __xfrm_state_bump_genids (struct xfrm_state*) ;
 int __xfrm_state_insert (struct xfrm_state*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct net* xs_net (struct xfrm_state*) ;

void xfrm_state_insert(struct xfrm_state *x)
{
 struct net *net = xs_net(x);

 spin_lock_bh(&net->xfrm.xfrm_state_lock);
 __xfrm_state_bump_genids(x);
 __xfrm_state_insert(x);
 spin_unlock_bh(&net->xfrm.xfrm_state_lock);
}
