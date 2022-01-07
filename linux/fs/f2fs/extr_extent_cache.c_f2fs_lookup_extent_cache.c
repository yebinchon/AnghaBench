
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct extent_info {int dummy; } ;
typedef int pgoff_t ;


 int f2fs_lookup_extent_tree (struct inode*,int ,struct extent_info*) ;
 int f2fs_may_extent_tree (struct inode*) ;

bool f2fs_lookup_extent_cache(struct inode *inode, pgoff_t pgofs,
     struct extent_info *ei)
{
 if (!f2fs_may_extent_tree(inode))
  return 0;

 return f2fs_lookup_extent_tree(inode, pgofs, ei);
}
