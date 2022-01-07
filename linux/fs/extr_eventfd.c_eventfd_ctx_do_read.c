
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int flags; int count; } ;
typedef int __u64 ;


 int EFD_SEMAPHORE ;

__attribute__((used)) static void eventfd_ctx_do_read(struct eventfd_ctx *ctx, __u64 *cnt)
{
 *cnt = (ctx->flags & EFD_SEMAPHORE) ? 1 : ctx->count;
 ctx->count -= *cnt;
}
