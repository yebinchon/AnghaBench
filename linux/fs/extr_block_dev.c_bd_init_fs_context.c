
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * ops; } ;
struct fs_context {int s_iflags; } ;


 int BDEVFS_MAGIC ;
 int ENOMEM ;
 int SB_I_CGROUPWB ;
 int bdev_sops ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int bd_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, BDEVFS_MAGIC);
 if (!ctx)
  return -ENOMEM;
 fc->s_iflags |= SB_I_CGROUPWB;
 ctx->ops = &bdev_sops;
 return 0;
}
