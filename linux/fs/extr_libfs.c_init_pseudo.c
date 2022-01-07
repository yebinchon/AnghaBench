
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {unsigned long magic; } ;
struct fs_context {int global; int sb_flags; int * ops; struct pseudo_fs_context* fs_private; } ;


 int GFP_KERNEL ;
 int SB_NOUSER ;
 struct pseudo_fs_context* kzalloc (int,int ) ;
 scalar_t__ likely (struct pseudo_fs_context*) ;
 int pseudo_fs_context_ops ;

struct pseudo_fs_context *init_pseudo(struct fs_context *fc,
     unsigned long magic)
{
 struct pseudo_fs_context *ctx;

 ctx = kzalloc(sizeof(struct pseudo_fs_context), GFP_KERNEL);
 if (likely(ctx)) {
  ctx->magic = magic;
  fc->fs_private = ctx;
  fc->ops = &pseudo_fs_context_ops;
  fc->sb_flags |= SB_NOUSER;
  fc->global = 1;
 }
 return ctx;
}
