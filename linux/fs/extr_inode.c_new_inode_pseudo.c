
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_sb_list; int i_lock; scalar_t__ i_state; } ;


 int INIT_LIST_HEAD (int *) ;
 struct inode* alloc_inode (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *new_inode_pseudo(struct super_block *sb)
{
 struct inode *inode = alloc_inode(sb);

 if (inode) {
  spin_lock(&inode->i_lock);
  inode->i_state = 0;
  spin_unlock(&inode->i_lock);
  INIT_LIST_HEAD(&inode->i_sb_list);
 }
 return inode;
}
