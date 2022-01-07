
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct op_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 struct op_inode_info* kmem_cache_alloc (int ,int ) ;
 int op_inode_cachep ;

__attribute__((used)) static struct inode *openprom_alloc_inode(struct super_block *sb)
{
 struct op_inode_info *oi;

 oi = kmem_cache_alloc(op_inode_cachep, GFP_KERNEL);
 if (!oi)
  return ((void*)0);

 return &oi->vfs_inode;
}
