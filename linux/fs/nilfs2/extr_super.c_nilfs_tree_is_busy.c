
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_count (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;

__attribute__((used)) static bool nilfs_tree_is_busy(struct dentry *root_dentry)
{
 shrink_dcache_parent(root_dentry);
 return d_count(root_dentry) > 1;
}
