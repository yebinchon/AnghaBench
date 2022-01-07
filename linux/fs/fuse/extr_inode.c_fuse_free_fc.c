
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_fs_context {struct fuse_fs_context* subtype; } ;
struct fs_context {struct fuse_fs_context* fs_private; } ;


 int kfree (struct fuse_fs_context*) ;

__attribute__((used)) static void fuse_free_fc(struct fs_context *fc)
{
 struct fuse_fs_context *ctx = fc->fs_private;

 if (ctx) {
  kfree(ctx->subtype);
  kfree(ctx);
 }
}
