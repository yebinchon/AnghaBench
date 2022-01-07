
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int ctx_len; int ctx_alg; int ctx_doi; int exttype; int len; } ;
struct sadb_x_sec_ctx {int sadb_x_ctx_len; int sadb_x_ctx_alg; int sadb_x_ctx_doi; int sadb_x_sec_exttype; } ;
typedef int gfp_t ;


 struct xfrm_user_sec_ctx* kmalloc (int,int ) ;
 int memcpy (struct xfrm_user_sec_ctx*,struct sadb_x_sec_ctx const*,int) ;
 int pfkey_sec_ctx_len (struct sadb_x_sec_ctx const*) ;

__attribute__((used)) static inline struct xfrm_user_sec_ctx *pfkey_sadb2xfrm_user_sec_ctx(const struct sadb_x_sec_ctx *sec_ctx,
             gfp_t gfp)
{
 struct xfrm_user_sec_ctx *uctx = ((void*)0);
 int ctx_size = sec_ctx->sadb_x_ctx_len;

 uctx = kmalloc((sizeof(*uctx)+ctx_size), gfp);

 if (!uctx)
  return ((void*)0);

 uctx->len = pfkey_sec_ctx_len(sec_ctx);
 uctx->exttype = sec_ctx->sadb_x_sec_exttype;
 uctx->ctx_doi = sec_ctx->sadb_x_ctx_doi;
 uctx->ctx_alg = sec_ctx->sadb_x_ctx_alg;
 uctx->ctx_len = sec_ctx->sadb_x_ctx_len;
 memcpy(uctx + 1, sec_ctx + 1,
        uctx->ctx_len);

 return uctx;
}
