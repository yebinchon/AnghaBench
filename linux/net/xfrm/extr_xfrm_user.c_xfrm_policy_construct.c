
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_userpolicy_info {int dummy; } ;
struct TYPE_2__ {int dead; } ;
struct xfrm_policy {TYPE_1__ walk; int if_id; int mark; int type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t XFRMA_IF_ID ;
 int copy_from_user_policy (struct xfrm_policy*,struct xfrm_userpolicy_info*) ;
 int copy_from_user_policy_type (int *,struct nlattr**) ;
 int copy_from_user_sec_ctx (struct xfrm_policy*,struct nlattr**) ;
 int copy_from_user_tmpl (struct xfrm_policy*,struct nlattr**) ;
 int nla_get_u32 (struct nlattr*) ;
 int xfrm_mark_get (struct nlattr**,int *) ;
 struct xfrm_policy* xfrm_policy_alloc (struct net*,int ) ;
 int xfrm_policy_destroy (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_policy *xfrm_policy_construct(struct net *net, struct xfrm_userpolicy_info *p, struct nlattr **attrs, int *errp)
{
 struct xfrm_policy *xp = xfrm_policy_alloc(net, GFP_KERNEL);
 int err;

 if (!xp) {
  *errp = -ENOMEM;
  return ((void*)0);
 }

 copy_from_user_policy(xp, p);

 err = copy_from_user_policy_type(&xp->type, attrs);
 if (err)
  goto error;

 if (!(err = copy_from_user_tmpl(xp, attrs)))
  err = copy_from_user_sec_ctx(xp, attrs);
 if (err)
  goto error;

 xfrm_mark_get(attrs, &xp->mark);

 if (attrs[XFRMA_IF_ID])
  xp->if_id = nla_get_u32(attrs[XFRMA_IF_ID]);

 return xp;
 error:
 *errp = err;
 xp->walk.dead = 1;
 xfrm_policy_destroy(xp);
 return ((void*)0);
}
