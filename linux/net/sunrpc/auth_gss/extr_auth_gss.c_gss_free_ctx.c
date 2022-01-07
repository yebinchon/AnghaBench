
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_cl_ctx {int gc_rcu; } ;


 int call_rcu (int *,int ) ;
 int gss_free_ctx_callback ;

__attribute__((used)) static void
gss_free_ctx(struct gss_cl_ctx *ctx)
{
 call_rcu(&ctx->gc_rcu, gss_free_ctx_callback);
}
