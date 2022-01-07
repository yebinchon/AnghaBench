
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_sec_ctx {int dummy; } ;
typedef int gfp_t ;


 int selinux_xfrm_alloc_user (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int ) ;

int selinux_xfrm_policy_alloc(struct xfrm_sec_ctx **ctxp,
         struct xfrm_user_sec_ctx *uctx,
         gfp_t gfp)
{
 return selinux_xfrm_alloc_user(ctxp, uctx, gfp);
}
