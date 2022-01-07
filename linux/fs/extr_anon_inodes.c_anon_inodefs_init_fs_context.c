
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * dops; } ;
struct fs_context {int dummy; } ;


 int ANON_INODE_FS_MAGIC ;
 int ENOMEM ;
 int anon_inodefs_dentry_operations ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int anon_inodefs_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, ANON_INODE_FS_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->dops = &anon_inodefs_dentry_operations;
 return 0;
}
