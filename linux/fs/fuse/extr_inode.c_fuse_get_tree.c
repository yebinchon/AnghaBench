
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_fs_context {scalar_t__ is_bdev; int group_id_present; int user_id_present; int rootmode_present; int fd_present; } ;
struct fs_context {struct fuse_fs_context* fs_private; } ;


 int EINVAL ;
 int fuse_fill_super ;
 int get_tree_bdev (struct fs_context*,int ) ;
 int get_tree_nodev (struct fs_context*,int ) ;

__attribute__((used)) static int fuse_get_tree(struct fs_context *fc)
{
 struct fuse_fs_context *ctx = fc->fs_private;

 if (!ctx->fd_present || !ctx->rootmode_present ||
     !ctx->user_id_present || !ctx->group_id_present)
  return -EINVAL;






 return get_tree_nodev(fc, fuse_fill_super);
}
