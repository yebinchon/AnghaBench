
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * dops; int * ops; } ;
struct fs_context {int dummy; } ;


 int ENOMEM ;
 int PIPEFS_MAGIC ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;
 int pipefs_dentry_operations ;
 int pipefs_ops ;

__attribute__((used)) static int pipefs_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, PIPEFS_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->ops = &pipefs_ops;
 ctx->dops = &pipefs_dentry_operations;
 return 0;
}
