
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * dops; int * ops; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int NSFS_MAGIC ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;
 int ns_dentry_operations ;
 int nsfs_ops ;

__attribute__((used)) static int nsfs_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, NSFS_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->ops = &nsfs_ops;
 ctx->dops = &ns_dentry_operations;
 return 0;
}
