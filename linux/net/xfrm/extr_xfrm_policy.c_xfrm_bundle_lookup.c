
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xfrm_policy {int dummy; } ;
struct xfrm_flo {int dst_orig; } ;
struct xfrm_dst {int num_pols; int num_xfrms; int pols; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;


 int EAGAIN ;
 int EREMOTE ;
 struct xfrm_dst* ERR_CAST (struct xfrm_dst*) ;
 struct xfrm_dst* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct xfrm_dst*) ;
 int LINUX_MIB_XFRMOUTPOLERROR ;
 int PTR_ERR (struct xfrm_dst*) ;
 int XFRM_INC_STATS (struct net*,int ) ;
 int XFRM_POLICY_TYPE_MAX ;
 int memcpy (int ,struct xfrm_policy**,int) ;
 struct xfrm_dst* xfrm_create_dummy_bundle (struct net*,struct xfrm_flo*,struct flowi const*,int,int ) ;
 int xfrm_expand_policies (struct flowi const*,int ,struct xfrm_policy**,int*,int*) ;
 struct xfrm_policy* xfrm_policy_lookup (struct net*,struct flowi const*,int ,int ,int ) ;
 int xfrm_pols_put (struct xfrm_policy**,int) ;
 struct xfrm_dst* xfrm_resolve_and_create_bundle (struct xfrm_policy**,int,struct flowi const*,int ,int ) ;

__attribute__((used)) static struct xfrm_dst *xfrm_bundle_lookup(struct net *net,
        const struct flowi *fl,
        u16 family, u8 dir,
        struct xfrm_flo *xflo, u32 if_id)
{
 struct xfrm_policy *pols[XFRM_POLICY_TYPE_MAX];
 int num_pols = 0, num_xfrms = 0, err;
 struct xfrm_dst *xdst;



 num_pols = 1;
 pols[0] = xfrm_policy_lookup(net, fl, family, dir, if_id);
 err = xfrm_expand_policies(fl, family, pols,
        &num_pols, &num_xfrms);
 if (err < 0)
  goto inc_error;
 if (num_pols == 0)
  return ((void*)0);
 if (num_xfrms <= 0)
  goto make_dummy_bundle;

 xdst = xfrm_resolve_and_create_bundle(pols, num_pols, fl, family,
           xflo->dst_orig);
 if (IS_ERR(xdst)) {
  err = PTR_ERR(xdst);
  if (err == -EREMOTE) {
   xfrm_pols_put(pols, num_pols);
   return ((void*)0);
  }

  if (err != -EAGAIN)
   goto error;
  goto make_dummy_bundle;
 } else if (xdst == ((void*)0)) {
  num_xfrms = 0;
  goto make_dummy_bundle;
 }

 return xdst;

make_dummy_bundle:



 xdst = xfrm_create_dummy_bundle(net, xflo, fl, num_xfrms, family);
 if (IS_ERR(xdst)) {
  xfrm_pols_put(pols, num_pols);
  return ERR_CAST(xdst);
 }
 xdst->num_pols = num_pols;
 xdst->num_xfrms = num_xfrms;
 memcpy(xdst->pols, pols, sizeof(struct xfrm_policy *) * num_pols);

 return xdst;

inc_error:
 XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTPOLERROR);
error:
 xfrm_pols_put(pols, num_pols);
 return ERR_PTR(err);
}
