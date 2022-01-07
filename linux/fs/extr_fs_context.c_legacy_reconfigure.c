
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_op; } ;
struct legacy_fs_context {int * legacy_data; } ;
struct fs_context {int sb_flags; TYPE_1__* root; struct legacy_fs_context* fs_private; } ;
struct TYPE_4__ {int (* remount_fs ) (struct super_block*,int *,int *) ;} ;
struct TYPE_3__ {struct super_block* d_sb; } ;


 int stub1 (struct super_block*,int *,int *) ;

__attribute__((used)) static int legacy_reconfigure(struct fs_context *fc)
{
 struct legacy_fs_context *ctx = fc->fs_private;
 struct super_block *sb = fc->root->d_sb;

 if (!sb->s_op->remount_fs)
  return 0;

 return sb->s_op->remount_fs(sb, &fc->sb_flags,
        ctx ? ctx->legacy_data : ((void*)0));
}
