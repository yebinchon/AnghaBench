
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xfrm_state {struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int ctx_len; int ctx_str; scalar_t__ ctx_sid; int ctx_alg; int ctx_doi; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRM_SC_ALG_SELINUX ;
 int XFRM_SC_DOI_LSM ;
 int atomic_inc (int *) ;
 int kfree (char*) ;
 struct xfrm_sec_ctx* kmalloc (int,int ) ;
 int memcpy (int ,char*,int) ;
 int security_sid_to_context (int *,scalar_t__,char**,int*) ;
 int selinux_state ;
 int selinux_xfrm_refcount ;

int selinux_xfrm_state_alloc_acquire(struct xfrm_state *x,
         struct xfrm_sec_ctx *polsec, u32 secid)
{
 int rc;
 struct xfrm_sec_ctx *ctx;
 char *ctx_str = ((void*)0);
 int str_len;

 if (!polsec)
  return 0;

 if (secid == 0)
  return -EINVAL;

 rc = security_sid_to_context(&selinux_state, secid, &ctx_str,
         &str_len);
 if (rc)
  return rc;

 ctx = kmalloc(sizeof(*ctx) + str_len, GFP_ATOMIC);
 if (!ctx) {
  rc = -ENOMEM;
  goto out;
 }

 ctx->ctx_doi = XFRM_SC_DOI_LSM;
 ctx->ctx_alg = XFRM_SC_ALG_SELINUX;
 ctx->ctx_sid = secid;
 ctx->ctx_len = str_len;
 memcpy(ctx->ctx_str, ctx_str, str_len);

 x->security = ctx;
 atomic_inc(&selinux_xfrm_refcount);
out:
 kfree(ctx_str);
 return rc;
}
