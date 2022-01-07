
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hfsplus_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 int hfsplus_inode_cachep ;
 struct hfsplus_inode_info* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *hfsplus_alloc_inode(struct super_block *sb)
{
 struct hfsplus_inode_info *i;

 i = kmem_cache_alloc(hfsplus_inode_cachep, GFP_KERNEL);
 return i ? &i->vfs_inode : ((void*)0);
}
