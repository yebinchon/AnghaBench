
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xfrm_sec_ctx {int ctx_sid; } ;


 int ASSOCIATION__POLMATCH ;
 int EACCES ;
 int EINVAL ;
 int ESRCH ;
 int SECCLASS_ASSOCIATION ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int selinux_authorizable_ctx (struct xfrm_sec_ctx*) ;
 int selinux_state ;

int selinux_xfrm_policy_lookup(struct xfrm_sec_ctx *ctx, u32 fl_secid, u8 dir)
{
 int rc;



 if (!ctx)
  return 0;


 if (!selinux_authorizable_ctx(ctx))
  return -EINVAL;

 rc = avc_has_perm(&selinux_state,
     fl_secid, ctx->ctx_sid,
     SECCLASS_ASSOCIATION, ASSOCIATION__POLMATCH, ((void*)0));
 return (rc == -EACCES ? -ESRCH : rc);
}
