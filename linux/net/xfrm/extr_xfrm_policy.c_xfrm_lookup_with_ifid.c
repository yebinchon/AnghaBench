
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int use_time; } ;
struct xfrm_policy {int flags; TYPE_4__ curlft; } ;
struct xfrm_flo {int flags; struct dst_entry* dst_orig; } ;
struct dst_entry {int flags; TYPE_6__* xfrm; TYPE_1__* ops; } ;
struct TYPE_8__ {struct dst_entry dst; } ;
struct xfrm_dst {int num_pols; int num_xfrms; TYPE_2__ u; struct dst_entry* route; int pols; } ;
struct sock {scalar_t__* sk_policy; } ;
struct TYPE_9__ {scalar_t__ sysctl_larval_drop; int * policy_count; } ;
struct net {TYPE_3__ xfrm; } ;
struct flowi {int dummy; } ;
struct TYPE_11__ {scalar_t__ mode; } ;
struct TYPE_12__ {TYPE_5__ props; } ;
struct TYPE_7__ {int family; } ;


 int DST_NOXFRM ;
 int DST_XFRM_TUNNEL ;
 int EAGAIN ;
 int ENOENT ;
 int EPERM ;
 int EREMOTE ;
 struct dst_entry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct xfrm_dst*) ;
 int LINUX_MIB_XFRMOUTNOSTATES ;
 int LINUX_MIB_XFRMOUTPOLBLOCK ;
 int PTR_ERR (struct xfrm_dst*) ;
 int XFRM_INC_STATS (struct net*,int ) ;
 int XFRM_LOOKUP_ICMP ;
 int XFRM_LOOKUP_KEEP_DST_REF ;
 scalar_t__ XFRM_MODE_TUNNEL ;
 int XFRM_POLICY_ICMP ;
 size_t XFRM_POLICY_OUT ;
 int XFRM_POLICY_TYPE_MAX ;
 int dst_release (struct dst_entry*) ;
 int ktime_get_real_seconds () ;
 int memcpy (struct xfrm_policy**,int ,int) ;
 struct sock* sk_const_to_full_sk (struct sock const*) ;
 struct xfrm_dst* xfrm_bundle_lookup (struct net*,struct flowi const*,int ,size_t,struct xfrm_flo*,int ) ;
 int xfrm_expand_policies (struct flowi const*,int ,struct xfrm_policy**,int*,int*) ;
 int xfrm_pols_put (struct xfrm_policy**,int) ;
 struct xfrm_dst* xfrm_resolve_and_create_bundle (struct xfrm_policy**,int,struct flowi const*,int ,struct dst_entry*) ;
 struct xfrm_policy* xfrm_sk_policy_lookup (struct sock const*,size_t,struct flowi const*,int ,int ) ;

struct dst_entry *xfrm_lookup_with_ifid(struct net *net,
     struct dst_entry *dst_orig,
     const struct flowi *fl,
     const struct sock *sk,
     int flags, u32 if_id)
{
 struct xfrm_policy *pols[XFRM_POLICY_TYPE_MAX];
 struct xfrm_dst *xdst;
 struct dst_entry *dst, *route;
 u16 family = dst_orig->ops->family;
 u8 dir = XFRM_POLICY_OUT;
 int i, err, num_pols, num_xfrms = 0, drop_pols = 0;

 dst = ((void*)0);
 xdst = ((void*)0);
 route = ((void*)0);

 sk = sk_const_to_full_sk(sk);
 if (sk && sk->sk_policy[XFRM_POLICY_OUT]) {
  num_pols = 1;
  pols[0] = xfrm_sk_policy_lookup(sk, XFRM_POLICY_OUT, fl, family,
      if_id);
  err = xfrm_expand_policies(fl, family, pols,
        &num_pols, &num_xfrms);
  if (err < 0)
   goto dropdst;

  if (num_pols) {
   if (num_xfrms <= 0) {
    drop_pols = num_pols;
    goto no_transform;
   }

   xdst = xfrm_resolve_and_create_bundle(
     pols, num_pols, fl,
     family, dst_orig);

   if (IS_ERR(xdst)) {
    xfrm_pols_put(pols, num_pols);
    err = PTR_ERR(xdst);
    if (err == -EREMOTE)
     goto nopol;

    goto dropdst;
   } else if (xdst == ((void*)0)) {
    num_xfrms = 0;
    drop_pols = num_pols;
    goto no_transform;
   }

   route = xdst->route;
  }
 }

 if (xdst == ((void*)0)) {
  struct xfrm_flo xflo;

  xflo.dst_orig = dst_orig;
  xflo.flags = flags;


  if ((dst_orig->flags & DST_NOXFRM) ||
      !net->xfrm.policy_count[XFRM_POLICY_OUT])
   goto nopol;

  xdst = xfrm_bundle_lookup(net, fl, family, dir, &xflo, if_id);
  if (xdst == ((void*)0))
   goto nopol;
  if (IS_ERR(xdst)) {
   err = PTR_ERR(xdst);
   goto dropdst;
  }

  num_pols = xdst->num_pols;
  num_xfrms = xdst->num_xfrms;
  memcpy(pols, xdst->pols, sizeof(struct xfrm_policy *) * num_pols);
  route = xdst->route;
 }

 dst = &xdst->u.dst;
 if (route == ((void*)0) && num_xfrms > 0) {






  if (net->xfrm.sysctl_larval_drop) {
   XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTNOSTATES);
   err = -EREMOTE;
   goto error;
  }

  err = -EAGAIN;

  XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTNOSTATES);
  goto error;
 }

no_transform:
 if (num_pols == 0)
  goto nopol;

 if ((flags & XFRM_LOOKUP_ICMP) &&
     !(pols[0]->flags & XFRM_POLICY_ICMP)) {
  err = -ENOENT;
  goto error;
 }

 for (i = 0; i < num_pols; i++)
  pols[i]->curlft.use_time = ktime_get_real_seconds();

 if (num_xfrms < 0) {

  XFRM_INC_STATS(net, LINUX_MIB_XFRMOUTPOLBLOCK);
  err = -EPERM;
  goto error;
 } else if (num_xfrms > 0) {

  dst_release(dst_orig);
 } else {

  dst_release(dst);
  dst = dst_orig;
 }
ok:
 xfrm_pols_put(pols, drop_pols);
 if (dst && dst->xfrm &&
     dst->xfrm->props.mode == XFRM_MODE_TUNNEL)
  dst->flags |= DST_XFRM_TUNNEL;
 return dst;

nopol:
 if (!(flags & XFRM_LOOKUP_ICMP)) {
  dst = dst_orig;
  goto ok;
 }
 err = -ENOENT;
error:
 dst_release(dst);
dropdst:
 if (!(flags & XFRM_LOOKUP_KEEP_DST_REF))
  dst_release(dst_orig);
 xfrm_pols_put(pols, drop_pols);
 return ERR_PTR(err);
}
