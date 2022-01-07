
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_post_read_ctx {int cur_step; int enabled_steps; int bio; int work; } ;


 int INIT_WORK (int *,int ) ;


 int __read_end_io (int ) ;
 int decrypt_work ;
 int fscrypt_enqueue_decrypt_work (int *) ;
 int fsverity_enqueue_verify_work (int *) ;
 int verity_work ;

__attribute__((used)) static void bio_post_read_processing(struct bio_post_read_ctx *ctx)
{





 switch (++ctx->cur_step) {
 case 129:
  if (ctx->enabled_steps & (1 << 129)) {
   INIT_WORK(&ctx->work, decrypt_work);
   fscrypt_enqueue_decrypt_work(&ctx->work);
   return;
  }
  ctx->cur_step++;

 case 128:
  if (ctx->enabled_steps & (1 << 128)) {
   INIT_WORK(&ctx->work, verity_work);
   fsverity_enqueue_verify_work(&ctx->work);
   return;
  }
  ctx->cur_step++;

 default:
  __read_end_io(ctx->bio);
 }
}
