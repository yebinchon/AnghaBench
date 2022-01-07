
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xfrm_state {int dummy; } ;
struct xfrm_policy {int genid; } ;
struct xfrm_dst {int num_xfrms; int num_pols; int policy_genid; int pols; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EAGAIN ;
 struct xfrm_dst* ERR_CAST (struct dst_entry*) ;
 struct xfrm_dst* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int LINUX_MIB_XFRMOUTBUNDLEGENERROR ;
 int LINUX_MIB_XFRMOUTPOLERROR ;
 int XFRM_INC_STATS (struct net*,int ) ;
 int XFRM_MAX_DEPTH ;
 int atomic_read (int *) ;
 int memcpy (int ,struct xfrm_policy**,int) ;
 struct dst_entry* xfrm_bundle_create (struct xfrm_policy*,struct xfrm_state**,struct xfrm_dst**,int,struct flowi const*,struct dst_entry*) ;
 int xfrm_tmpl_resolve (struct xfrm_policy**,int,struct flowi const*,struct xfrm_state**,int ) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_dst *
xfrm_resolve_and_create_bundle(struct xfrm_policy **pols, int num_pols,
          const struct flowi *fl, u16 family,
          struct dst_entry *dst_orig)
{
 struct net *net = xp_net(pols[0]);
 struct xfrm_state *xfrm[XFRM_MAX_DEPTH];
 struct xfrm_dst *bundle[XFRM_MAX_DEPTH];
 struct xfrm_dst *xdst;
 struct dst_entry *dst;
 int err;


 err = xfrm_tmpl_resolve(pols, num_pols, fl, xfrm, family);
 if (err <= 0) {
  if (err == 0)
   return ((void*)0);

  if (err != -EAGAIN)
   XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTPOLERROR);
  return ERR_PTR(err);
 }

 dst = xfrm_bundle_create(pols[0], xfrm, bundle, err, fl, dst_orig);
 if (IS_ERR(dst)) {
  XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTBUNDLEGENERROR);
  return ERR_CAST(dst);
 }

 xdst = (struct xfrm_dst *)dst;
 xdst->num_xfrms = err;
 xdst->num_pols = num_pols;
 memcpy(xdst->pols, pols, sizeof(struct xfrm_policy *) * num_pols);
 xdst->policy_genid = atomic_read(&pols[0]->genid);

 return xdst;
}
