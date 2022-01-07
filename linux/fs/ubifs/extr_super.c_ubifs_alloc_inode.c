
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ubifs_inode {struct inode vfs_inode; int ui_lock; int ui_mutex; } ;
struct super_block {int dummy; } ;


 int GFP_NOFS ;
 struct ubifs_inode* kmem_cache_alloc (int ,int ) ;
 int memset (void*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int ubifs_inode_slab ;

__attribute__((used)) static struct inode *ubifs_alloc_inode(struct super_block *sb)
{
 struct ubifs_inode *ui;

 ui = kmem_cache_alloc(ubifs_inode_slab, GFP_NOFS);
 if (!ui)
  return ((void*)0);

 memset((void *)ui + sizeof(struct inode), 0,
        sizeof(struct ubifs_inode) - sizeof(struct inode));
 mutex_init(&ui->ui_mutex);
 spin_lock_init(&ui->ui_lock);
 return &ui->vfs_inode;
}
