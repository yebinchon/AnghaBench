
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct kernfs_super_info {scalar_t__ root; scalar_t__ ns; } ;
struct fs_context {struct kernfs_super_info* s_fs_info; } ;


 struct kernfs_super_info* kernfs_info (struct super_block*) ;

__attribute__((used)) static int kernfs_test_super(struct super_block *sb, struct fs_context *fc)
{
 struct kernfs_super_info *sb_info = kernfs_info(sb);
 struct kernfs_super_info *info = fc->s_fs_info;

 return sb_info->root == info->root && sb_info->ns == info->ns;
}
