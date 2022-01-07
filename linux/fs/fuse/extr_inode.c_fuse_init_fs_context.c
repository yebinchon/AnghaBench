
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_fs_context {int is_bdev; int destroy; int blksize; int max_read; } ;
struct fs_context {int * ops; struct fuse_fs_context* fs_private; int * fs_type; } ;


 int ENOMEM ;
 int FUSE_DEFAULT_BLKSIZE ;
 int GFP_KERNEL ;
 int fuse_context_ops ;
 int fuseblk_fs_type ;
 struct fuse_fs_context* kzalloc (int,int ) ;

__attribute__((used)) static int fuse_init_fs_context(struct fs_context *fc)
{
 struct fuse_fs_context *ctx;

 ctx = kzalloc(sizeof(struct fuse_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->max_read = ~0;
 ctx->blksize = FUSE_DEFAULT_BLKSIZE;
 fc->fs_private = ctx;
 fc->ops = &fuse_context_ops;
 return 0;
}
