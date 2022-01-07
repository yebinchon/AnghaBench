
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_cil_ctx {int discard_endio_work; } ;
struct bio {struct xfs_cil_ctx* bi_private; } ;


 int INIT_WORK (int *,int ) ;
 int bio_put (struct bio*) ;
 int queue_work (int ,int *) ;
 int xfs_discard_wq ;
 int xlog_discard_endio_work ;

__attribute__((used)) static void
xlog_discard_endio(
 struct bio *bio)
{
 struct xfs_cil_ctx *ctx = bio->bi_private;

 INIT_WORK(&ctx->discard_endio_work, xlog_discard_endio_work);
 queue_work(xfs_discard_wq, &ctx->discard_endio_work);
 bio_put(bio);
}
