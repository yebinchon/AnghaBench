
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_context {TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;


 int jffs2_do_remount_fs (struct super_block*,struct fs_context*) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int jffs2_reconfigure(struct fs_context *fc)
{
 struct super_block *sb = fc->root->d_sb;

 sync_filesystem(sb);
 return jffs2_do_remount_fs(sb, fc);
}
