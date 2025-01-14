
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {scalar_t__ ctx_doi; scalar_t__ ctx_alg; } ;


 scalar_t__ XFRM_SC_ALG_SELINUX ;
 scalar_t__ XFRM_SC_DOI_LSM ;

__attribute__((used)) static inline int selinux_authorizable_ctx(struct xfrm_sec_ctx *ctx)
{
 return (ctx &&
  (ctx->ctx_doi == XFRM_SC_DOI_LSM) &&
  (ctx->ctx_alg == XFRM_SC_ALG_SELINUX));
}
