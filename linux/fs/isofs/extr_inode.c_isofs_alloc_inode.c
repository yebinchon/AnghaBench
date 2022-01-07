
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct iso_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 int isofs_inode_cachep ;
 struct iso_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *isofs_alloc_inode(struct super_block *sb)
{
 struct iso_inode_info *ei;
 ei = kmem_cache_alloc(isofs_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 return &ei->vfs_inode;
}
