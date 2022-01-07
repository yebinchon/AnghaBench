
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {scalar_t__ id; } ;


 int eventfd_ida ;
 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct eventfd_ctx*) ;

__attribute__((used)) static void eventfd_free_ctx(struct eventfd_ctx *ctx)
{
 if (ctx->id >= 0)
  ida_simple_remove(&eventfd_ida, ctx->id);
 kfree(ctx);
}
