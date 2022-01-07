
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_inode_list_lock; } ;
struct inode {int dummy; } ;


 int inode_sb_list_add (struct inode*) ;
 struct inode* new_inode_pseudo (struct super_block*) ;
 int spin_lock_prefetch (int *) ;

struct inode *new_inode(struct super_block *sb)
{
 struct inode *inode;

 spin_lock_prefetch(&sb->s_inode_list_lock);

 inode = new_inode_pseudo(sb);
 if (inode)
  inode_sb_list_add(inode);
 return inode;
}
