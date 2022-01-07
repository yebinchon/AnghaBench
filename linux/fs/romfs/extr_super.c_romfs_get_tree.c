
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int EINVAL ;
 int get_tree_bdev (struct fs_context*,int ) ;
 int get_tree_mtd (struct fs_context*,int ) ;
 int romfs_fill_super ;

__attribute__((used)) static int romfs_get_tree(struct fs_context *fc)
{
 int ret = -EINVAL;
 return ret;
}
