
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {scalar_t__ ctx_len; } ;
struct xfrm_policy {struct xfrm_sec_ctx* security; } ;
struct sadb_x_sec_ctx {int dummy; } ;


 int PFKEY_ALIGN8 (int) ;

__attribute__((used)) static inline int pfkey_xfrm_policy2sec_ctx_size(const struct xfrm_policy *xp)
{
 struct xfrm_sec_ctx *xfrm_ctx = xp->security;

 if (xfrm_ctx) {
  int len = sizeof(struct sadb_x_sec_ctx);
  len += xfrm_ctx->ctx_len;
  return PFKEY_ALIGN8(len);
 }
 return 0;
}
