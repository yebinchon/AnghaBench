
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_state {int security; } ;


 int GFP_KERNEL ;
 int selinux_xfrm_alloc_user (int *,struct xfrm_user_sec_ctx*,int ) ;

int selinux_xfrm_state_alloc(struct xfrm_state *x,
        struct xfrm_user_sec_ctx *uctx)
{
 return selinux_xfrm_alloc_user(&x->security, uctx, GFP_KERNEL);
}
