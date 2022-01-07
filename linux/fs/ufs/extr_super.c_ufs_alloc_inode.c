
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ufs_inode_info {struct inode vfs_inode; int truncate_mutex; int meta_lock; } ;
struct super_block {int dummy; } ;


 int GFP_NOFS ;
 int inode_set_iversion (struct inode*,int) ;
 struct ufs_inode_info* kmem_cache_alloc (int ,int ) ;
 int mutex_init (int *) ;
 int seqlock_init (int *) ;
 int ufs_inode_cachep ;

__attribute__((used)) static struct inode *ufs_alloc_inode(struct super_block *sb)
{
 struct ufs_inode_info *ei;

 ei = kmem_cache_alloc(ufs_inode_cachep, GFP_NOFS);
 if (!ei)
  return ((void*)0);

 inode_set_iversion(&ei->vfs_inode, 1);
 seqlock_init(&ei->meta_lock);
 mutex_init(&ei->truncate_mutex);
 return &ei->vfs_inode;
}
