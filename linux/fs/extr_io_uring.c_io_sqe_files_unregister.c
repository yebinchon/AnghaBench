
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {scalar_t__ nr_user_files; int * user_files; } ;


 int ENXIO ;
 int __io_sqe_files_unregister (struct io_ring_ctx*) ;
 int kfree (int *) ;

__attribute__((used)) static int io_sqe_files_unregister(struct io_ring_ctx *ctx)
{
 if (!ctx->user_files)
  return -ENXIO;

 __io_sqe_files_unregister(ctx);
 kfree(ctx->user_files);
 ctx->user_files = ((void*)0);
 ctx->nr_user_files = 0;
 return 0;
}
