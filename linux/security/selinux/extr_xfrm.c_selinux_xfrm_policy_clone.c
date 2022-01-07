
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {scalar_t__ ctx_len; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int atomic_inc (int *) ;
 struct xfrm_sec_ctx* kmemdup (struct xfrm_sec_ctx*,scalar_t__,int ) ;
 int selinux_xfrm_refcount ;

int selinux_xfrm_policy_clone(struct xfrm_sec_ctx *old_ctx,
         struct xfrm_sec_ctx **new_ctxp)
{
 struct xfrm_sec_ctx *new_ctx;

 if (!old_ctx)
  return 0;

 new_ctx = kmemdup(old_ctx, sizeof(*old_ctx) + old_ctx->ctx_len,
     GFP_ATOMIC);
 if (!new_ctx)
  return -ENOMEM;
 atomic_inc(&selinux_xfrm_refcount);
 *new_ctxp = new_ctx;

 return 0;
}
