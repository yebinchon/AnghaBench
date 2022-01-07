
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct dlmfs_inode_private {struct inode ip_vfs_inode; } ;


 int GFP_NOFS ;
 int dlmfs_inode_cache ;
 struct dlmfs_inode_private* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *dlmfs_alloc_inode(struct super_block *sb)
{
 struct dlmfs_inode_private *ip;

 ip = kmem_cache_alloc(dlmfs_inode_cache, GFP_NOFS);
 if (!ip)
  return ((void*)0);

 return &ip->ip_vfs_inode;
}
