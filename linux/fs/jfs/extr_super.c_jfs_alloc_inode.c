
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct jfs_inode_info {struct inode vfs_inode; int i_dquot; } ;


 int GFP_NOFS ;
 int jfs_inode_cachep ;
 struct jfs_inode_info* kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static struct inode *jfs_alloc_inode(struct super_block *sb)
{
 struct jfs_inode_info *jfs_inode;

 jfs_inode = kmem_cache_alloc(jfs_inode_cachep, GFP_NOFS);
 if (!jfs_inode)
  return ((void*)0);



 return &jfs_inode->vfs_inode;
}
