
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct karatsuba_ctx {scalar_t__ tspace; scalar_t__ tp; struct karatsuba_ctx* next; } ;


 int kfree (struct karatsuba_ctx*) ;
 int mpi_free_limb_space (scalar_t__) ;

void mpihelp_release_karatsuba_ctx(struct karatsuba_ctx *ctx)
{
 struct karatsuba_ctx *ctx2;

 if (ctx->tp)
  mpi_free_limb_space(ctx->tp);
 if (ctx->tspace)
  mpi_free_limb_space(ctx->tspace);
 for (ctx = ctx->next; ctx; ctx = ctx2) {
  ctx2 = ctx->next;
  if (ctx->tp)
   mpi_free_limb_space(ctx->tp);
  if (ctx->tspace)
   mpi_free_limb_space(ctx->tspace);
  kfree(ctx);
 }
}
