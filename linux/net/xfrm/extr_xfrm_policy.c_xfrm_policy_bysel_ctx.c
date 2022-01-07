
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xfrm_selector {int daddr; int saddr; int family; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct xfrm_policy {scalar_t__ pos; int security; } ;
struct xfrm_pol_inexact_candidates {struct hlist_head** res; } ;
struct xfrm_pol_inexact_bin {int dummy; } ;
struct TYPE_2__ {int xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;
struct hlist_head {int dummy; } ;


 int ARRAY_SIZE (struct hlist_head**) ;
 struct xfrm_policy* __xfrm_policy_bysel_ctx (struct hlist_head*,int ,int ,int ,int,struct xfrm_selector*,struct xfrm_sec_ctx*) ;
 int __xfrm_policy_unlink (struct xfrm_policy*,int) ;
 struct hlist_head* policy_hash_bysel (struct net*,struct xfrm_selector*,int ,int) ;
 int security_xfrm_policy_delete (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 int xfrm_policy_find_inexact_candidates (struct xfrm_pol_inexact_candidates*,struct xfrm_pol_inexact_bin*,int *,int *) ;
 struct xfrm_pol_inexact_bin* xfrm_policy_inexact_lookup (struct net*,int ,int ,int,int ) ;
 int xfrm_policy_inexact_prune_bin (struct xfrm_pol_inexact_bin*) ;
 int xfrm_policy_kill (struct xfrm_policy*) ;

struct xfrm_policy *xfrm_policy_bysel_ctx(struct net *net, u32 mark, u32 if_id,
       u8 type, int dir,
       struct xfrm_selector *sel,
       struct xfrm_sec_ctx *ctx, int delete,
       int *err)
{
 struct xfrm_pol_inexact_bin *bin = ((void*)0);
 struct xfrm_policy *pol, *ret = ((void*)0);
 struct hlist_head *chain;

 *err = 0;
 spin_lock_bh(&net->xfrm.xfrm_policy_lock);
 chain = policy_hash_bysel(net, sel, sel->family, dir);
 if (!chain) {
  struct xfrm_pol_inexact_candidates cand;
  int i;

  bin = xfrm_policy_inexact_lookup(net, type,
       sel->family, dir, if_id);
  if (!bin) {
   spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
   return ((void*)0);
  }

  if (!xfrm_policy_find_inexact_candidates(&cand, bin,
        &sel->saddr,
        &sel->daddr)) {
   spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
   return ((void*)0);
  }

  pol = ((void*)0);
  for (i = 0; i < ARRAY_SIZE(cand.res); i++) {
   struct xfrm_policy *tmp;

   tmp = __xfrm_policy_bysel_ctx(cand.res[i], mark,
            if_id, type, dir,
            sel, ctx);
   if (!tmp)
    continue;

   if (!pol || tmp->pos < pol->pos)
    pol = tmp;
  }
 } else {
  pol = __xfrm_policy_bysel_ctx(chain, mark, if_id, type, dir,
           sel, ctx);
 }

 if (pol) {
  xfrm_pol_hold(pol);
  if (delete) {
   *err = security_xfrm_policy_delete(pol->security);
   if (*err) {
    spin_unlock_bh(&net->xfrm.xfrm_policy_lock);
    return pol;
   }
   __xfrm_policy_unlink(pol, dir);
  }
  ret = pol;
 }
 spin_unlock_bh(&net->xfrm.xfrm_policy_lock);

 if (ret && delete)
  xfrm_policy_kill(ret);
 if (bin && delete)
  xfrm_policy_inexact_prune_bin(bin);
 return ret;
}
