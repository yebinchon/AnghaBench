
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_ring_ctx {int nr_user_bufs; struct io_mapped_ubuf* user_bufs; int user; scalar_t__ account_mem; } ;
struct io_mapped_ubuf {int nr_bvecs; TYPE_1__* bvec; } ;
struct TYPE_2__ {int bv_page; } ;


 int ENXIO ;
 int io_unaccount_mem (int ,int) ;
 int kfree (struct io_mapped_ubuf*) ;
 int kvfree (TYPE_1__*) ;
 int put_user_page (int ) ;

__attribute__((used)) static int io_sqe_buffer_unregister(struct io_ring_ctx *ctx)
{
 int i, j;

 if (!ctx->user_bufs)
  return -ENXIO;

 for (i = 0; i < ctx->nr_user_bufs; i++) {
  struct io_mapped_ubuf *imu = &ctx->user_bufs[i];

  for (j = 0; j < imu->nr_bvecs; j++)
   put_user_page(imu->bvec[j].bv_page);

  if (ctx->account_mem)
   io_unaccount_mem(ctx->user, imu->nr_bvecs);
  kvfree(imu->bvec);
  imu->nr_bvecs = 0;
 }

 kfree(ctx->user_bufs);
 ctx->user_bufs = ((void*)0);
 ctx->nr_user_bufs = 0;
 return 0;
}
