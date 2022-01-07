
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int xattr; int * dops; int * ops; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int SOCKFS_MAGIC ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;
 int sockfs_dentry_operations ;
 int sockfs_ops ;
 int sockfs_xattr_handlers ;

__attribute__((used)) static int sockfs_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, SOCKFS_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->ops = &sockfs_ops;
 ctx->dops = &sockfs_dentry_operations;
 ctx->xattr = sockfs_xattr_handlers;
 return 0;
}
