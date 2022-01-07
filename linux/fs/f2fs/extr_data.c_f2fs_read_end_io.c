
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_post_read_ctx {int cur_step; } ;
struct bio {struct bio_post_read_ctx* bi_private; int bi_status; } ;


 int BLK_STS_IOERR ;
 int F2FS_P_SB (int ) ;
 int FAULT_READ_IO ;
 int STEP_INITIAL ;
 int __read_end_io (struct bio*) ;
 int bio_first_page_all (struct bio*) ;
 int bio_post_read_processing (struct bio_post_read_ctx*) ;
 scalar_t__ f2fs_bio_post_read_required (struct bio*) ;
 int f2fs_show_injection_info (int ) ;
 scalar_t__ time_to_inject (int ,int ) ;

__attribute__((used)) static void f2fs_read_end_io(struct bio *bio)
{
 if (time_to_inject(F2FS_P_SB(bio_first_page_all(bio)),
      FAULT_READ_IO)) {
  f2fs_show_injection_info(FAULT_READ_IO);
  bio->bi_status = BLK_STS_IOERR;
 }

 if (f2fs_bio_post_read_required(bio)) {
  struct bio_post_read_ctx *ctx = bio->bi_private;

  ctx->cur_step = STEP_INITIAL;
  bio_post_read_processing(ctx);
  return;
 }

 __read_end_io(bio);
}
