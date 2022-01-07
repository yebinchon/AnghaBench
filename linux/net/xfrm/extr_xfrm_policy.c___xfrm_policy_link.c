
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int all; } ;
struct xfrm_policy {TYPE_1__ walk; } ;
struct TYPE_4__ {int * policy_count; int policy_all; } ;
struct net {TYPE_2__ xfrm; } ;


 int list_add (int *,int *) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static void __xfrm_policy_link(struct xfrm_policy *pol, int dir)
{
 struct net *net = xp_net(pol);

 list_add(&pol->walk.all, &net->xfrm.policy_all);
 net->xfrm.policy_count[dir]++;
 xfrm_pol_hold(pol);
}
