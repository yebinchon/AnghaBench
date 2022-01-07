
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int vfs_get_single_reconf_super ;
 int vfs_get_super (struct fs_context*,int ,int (*) (struct super_block*,struct fs_context*)) ;

int get_tree_single_reconf(struct fs_context *fc,
    int (*fill_super)(struct super_block *sb,
        struct fs_context *fc))
{
 return vfs_get_super(fc, vfs_get_single_reconf_super, fill_super);
}
