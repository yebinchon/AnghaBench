
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_cl_ctx {int gc_seq; int count; int gc_seq_lock; int gc_proc; } ;


 int GFP_NOFS ;
 int RPC_GSS_PROC_DATA ;
 struct gss_cl_ctx* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct gss_cl_ctx *
gss_alloc_context(void)
{
 struct gss_cl_ctx *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_NOFS);
 if (ctx != ((void*)0)) {
  ctx->gc_proc = RPC_GSS_PROC_DATA;
  ctx->gc_seq = 1;
  spin_lock_init(&ctx->gc_seq_lock);
  refcount_set(&ctx->count,1);
 }
 return ctx;
}
