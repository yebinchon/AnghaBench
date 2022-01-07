
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct sysv_inode_info {struct inode vfs_inode; } ;
struct super_block {int dummy; } ;


 int GFP_KERNEL ;
 struct sysv_inode_info* kmem_cache_alloc (int ,int ) ;
 int sysv_inode_cachep ;

__attribute__((used)) static struct inode *sysv_alloc_inode(struct super_block *sb)
{
 struct sysv_inode_info *si;

 si = kmem_cache_alloc(sysv_inode_cachep, GFP_KERNEL);
 if (!si)
  return ((void*)0);
 return &si->vfs_inode;
}
