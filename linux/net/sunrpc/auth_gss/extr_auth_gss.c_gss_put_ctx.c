
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_cl_ctx {int count; } ;


 int gss_free_ctx (struct gss_cl_ctx*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void
gss_put_ctx(struct gss_cl_ctx *ctx)
{
 if (refcount_dec_and_test(&ctx->count))
  gss_free_ctx(ctx);
}
