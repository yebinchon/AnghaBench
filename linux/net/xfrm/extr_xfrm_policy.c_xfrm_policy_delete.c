
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy {int dummy; } ;
struct TYPE_2__ {int xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int ENOENT ;
 struct xfrm_policy* __xfrm_policy_unlink (struct xfrm_policy*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_policy_kill (struct xfrm_policy*) ;
 struct net* xp_net (struct xfrm_policy*) ;

int xfrm_policy_delete(struct xfrm_policy *pol, int dir)
{
 struct net *net = xp_net(pol);

 spin_lock_bh(&net->xfrm.xfrm_policy_lock);
 pol = __xfrm_policy_unlink(pol, dir);
 spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
 if (pol) {
  xfrm_policy_kill(pol);
  return 0;
 }
 return -ENOENT;
}
