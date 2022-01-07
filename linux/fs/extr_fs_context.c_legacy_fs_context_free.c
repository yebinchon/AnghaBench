
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_fs_context {scalar_t__ param_type; struct legacy_fs_context* legacy_data; } ;
struct fs_context {struct legacy_fs_context* fs_private; } ;


 scalar_t__ LEGACY_FS_INDIVIDUAL_PARAMS ;
 int kfree (struct legacy_fs_context*) ;

__attribute__((used)) static void legacy_fs_context_free(struct fs_context *fc)
{
 struct legacy_fs_context *ctx = fc->fs_private;

 if (ctx) {
  if (ctx->param_type == LEGACY_FS_INDIVIDUAL_PARAMS)
   kfree(ctx->legacy_data);
  kfree(ctx);
 }
}
