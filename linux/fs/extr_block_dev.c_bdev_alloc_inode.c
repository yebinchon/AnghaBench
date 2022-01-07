
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct bdev_inode {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 int bdev_cachep ;
 struct bdev_inode* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *bdev_alloc_inode(struct super_block *sb)
{
 struct bdev_inode *ei = kmem_cache_alloc(bdev_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 return &ei->vfs_inode;
}
