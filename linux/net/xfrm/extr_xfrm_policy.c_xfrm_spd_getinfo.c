
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrmk_spdinfo {int spdhmcnt; int spdhcnt; int fwdscnt; int outscnt; int inscnt; int fwdcnt; int outcnt; int incnt; } ;
struct TYPE_2__ {int policy_idx_hmask; int * policy_count; } ;
struct net {TYPE_1__ xfrm; } ;


 size_t XFRM_POLICY_FWD ;
 size_t XFRM_POLICY_IN ;
 size_t XFRM_POLICY_MAX ;
 size_t XFRM_POLICY_OUT ;
 int xfrm_policy_hashmax ;

void xfrm_spd_getinfo(struct net *net, struct xfrmk_spdinfo *si)
{
 si->incnt = net->xfrm.policy_count[XFRM_POLICY_IN];
 si->outcnt = net->xfrm.policy_count[XFRM_POLICY_OUT];
 si->fwdcnt = net->xfrm.policy_count[XFRM_POLICY_FWD];
 si->inscnt = net->xfrm.policy_count[XFRM_POLICY_IN+XFRM_POLICY_MAX];
 si->outscnt = net->xfrm.policy_count[XFRM_POLICY_OUT+XFRM_POLICY_MAX];
 si->fwdscnt = net->xfrm.policy_count[XFRM_POLICY_FWD+XFRM_POLICY_MAX];
 si->spdhcnt = net->xfrm.policy_idx_hmask;
 si->spdhmcnt = xfrm_policy_hashmax;
}
