
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrmk_sadinfo {int sadhmcnt; scalar_t__ sadhcnt; int sadcnt; } ;
struct TYPE_2__ {int xfrm_state_lock; scalar_t__ state_hmask; int state_num; } ;
struct net {TYPE_1__ xfrm; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_state_hashmax ;

void xfrm_sad_getinfo(struct net *net, struct xfrmk_sadinfo *si)
{
 spin_lock_bh(&net->xfrm.xfrm_state_lock);
 si->sadcnt = net->xfrm.state_num;
 si->sadhcnt = net->xfrm.state_hmask + 1;
 si->sadhmcnt = xfrm_state_hashmax;
 spin_unlock_bh(&net->xfrm.xfrm_state_lock);
}
