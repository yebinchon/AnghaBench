
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int net; } ;
struct xfrm_pol_inexact_bin {TYPE_1__ k; } ;
struct TYPE_4__ {int xfrm_policy_lock; } ;
struct net {TYPE_2__ xfrm; } ;


 int __xfrm_policy_inexact_prune_bin (struct xfrm_pol_inexact_bin*,int) ;
 struct net* read_pnet (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void xfrm_policy_inexact_prune_bin(struct xfrm_pol_inexact_bin *b)
{
 struct net *net = read_pnet(&b->k.net);

 spin_lock_bh(&net->xfrm.xfrm_policy_lock);
 __xfrm_policy_inexact_prune_bin(b, 0);
 spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
}
