
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct romfs_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 struct romfs_inode_info* kmem_cache_alloc (int ,int ) ;
 int romfs_inode_cachep ;

__attribute__((used)) static struct inode *romfs_alloc_inode(struct super_block *sb)
{
 struct romfs_inode_info *inode;

 inode = kmem_cache_alloc(romfs_inode_cachep, GFP_KERNEL);
 return inode ? &inode->vfs_inode : ((void*)0);
}
