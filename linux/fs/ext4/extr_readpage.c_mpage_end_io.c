
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_post_read_ctx {int cur_step; } ;
struct bio {struct bio_post_read_ctx* bi_private; } ;


 int STEP_INITIAL ;
 int __read_end_io (struct bio*) ;
 int bio_post_read_processing (struct bio_post_read_ctx*) ;
 scalar_t__ bio_post_read_required (struct bio*) ;

__attribute__((used)) static void mpage_end_io(struct bio *bio)
{
 if (bio_post_read_required(bio)) {
  struct bio_post_read_ctx *ctx = bio->bi_private;

  ctx->cur_step = STEP_INITIAL;
  bio_post_read_processing(ctx);
  return;
 }
 __read_end_io(bio);
}
