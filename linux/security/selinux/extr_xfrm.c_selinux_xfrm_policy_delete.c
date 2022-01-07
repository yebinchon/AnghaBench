
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {int dummy; } ;


 int selinux_xfrm_delete (struct xfrm_sec_ctx*) ;

int selinux_xfrm_policy_delete(struct xfrm_sec_ctx *ctx)
{
 return selinux_xfrm_delete(ctx);
}
