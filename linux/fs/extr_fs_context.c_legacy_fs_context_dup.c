
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_fs_context {scalar_t__ param_type; int data_size; struct legacy_fs_context* legacy_data; } ;
struct fs_context {struct legacy_fs_context* fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LEGACY_FS_INDIVIDUAL_PARAMS ;
 int kfree (struct legacy_fs_context*) ;
 void* kmemdup (struct legacy_fs_context*,int,int ) ;

__attribute__((used)) static int legacy_fs_context_dup(struct fs_context *fc, struct fs_context *src_fc)
{
 struct legacy_fs_context *ctx;
 struct legacy_fs_context *src_ctx = src_fc->fs_private;

 ctx = kmemdup(src_ctx, sizeof(*src_ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 if (ctx->param_type == LEGACY_FS_INDIVIDUAL_PARAMS) {
  ctx->legacy_data = kmemdup(src_ctx->legacy_data,
        src_ctx->data_size, GFP_KERNEL);
  if (!ctx->legacy_data) {
   kfree(ctx);
   return -ENOMEM;
  }
 }

 fc->fs_private = ctx;
 return 0;
}
