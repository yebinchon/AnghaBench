
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xfrm_userpolicy_info {int dir; int sel; scalar_t__ index; } ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_user_polexpire {scalar_t__ hard; struct xfrm_userpolicy_info pol; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct TYPE_2__ {int dead; } ;
struct xfrm_policy {TYPE_1__ walk; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int ENOENT ;
 int GFP_KERNEL ;
 size_t XFRMA_IF_ID ;
 size_t XFRMA_SEC_CTX ;
 int XFRM_POLICY_TYPE_MAIN ;
 int copy_from_user_policy_type (int *,struct nlattr**) ;
 int km_policy_expired (struct xfrm_policy*,int ,scalar_t__,int ) ;
 struct xfrm_user_sec_ctx* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 struct xfrm_user_polexpire* nlmsg_data (struct nlmsghdr*) ;
 int security_xfrm_policy_alloc (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int ) ;
 int security_xfrm_policy_free (struct xfrm_sec_ctx*) ;
 struct net* sock_net (int ) ;
 scalar_t__ unlikely (int ) ;
 int verify_policy_dir (int ) ;
 int verify_sec_ctx_len (struct nlattr**) ;
 int xfrm_audit_policy_delete (struct xfrm_policy*,int,int) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 struct xfrm_policy* xfrm_policy_byid (struct net*,int ,int ,int ,int ,scalar_t__,int ,int*) ;
 struct xfrm_policy* xfrm_policy_bysel_ctx (struct net*,int ,int ,int ,int ,int *,struct xfrm_sec_ctx*,int ,int*) ;
 int xfrm_policy_delete (struct xfrm_policy*,int ) ;

__attribute__((used)) static int xfrm_add_pol_expire(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_policy *xp;
 struct xfrm_user_polexpire *up = nlmsg_data(nlh);
 struct xfrm_userpolicy_info *p = &up->pol;
 u8 type = XFRM_POLICY_TYPE_MAIN;
 int err = -ENOENT;
 struct xfrm_mark m;
 u32 mark = xfrm_mark_get(attrs, &m);
 u32 if_id = 0;

 err = copy_from_user_policy_type(&type, attrs);
 if (err)
  return err;

 err = verify_policy_dir(p->dir);
 if (err)
  return err;

 if (attrs[XFRMA_IF_ID])
  if_id = nla_get_u32(attrs[XFRMA_IF_ID]);

 if (p->index)
  xp = xfrm_policy_byid(net, mark, if_id, type, p->dir, p->index, 0, &err);
 else {
  struct nlattr *rt = attrs[XFRMA_SEC_CTX];
  struct xfrm_sec_ctx *ctx;

  err = verify_sec_ctx_len(attrs);
  if (err)
   return err;

  ctx = ((void*)0);
  if (rt) {
   struct xfrm_user_sec_ctx *uctx = nla_data(rt);

   err = security_xfrm_policy_alloc(&ctx, uctx, GFP_KERNEL);
   if (err)
    return err;
  }
  xp = xfrm_policy_bysel_ctx(net, mark, if_id, type, p->dir,
        &p->sel, ctx, 0, &err);
  security_xfrm_policy_free(ctx);
 }
 if (xp == ((void*)0))
  return -ENOENT;

 if (unlikely(xp->walk.dead))
  goto out;

 err = 0;
 if (up->hard) {
  xfrm_policy_delete(xp, p->dir);
  xfrm_audit_policy_delete(xp, 1, 1);
 }
 km_policy_expired(xp, p->dir, up->hard, nlh->nlmsg_pid);

out:
 xfrm_pol_put(xp);
 return err;
}
