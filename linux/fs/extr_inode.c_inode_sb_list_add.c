
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_sb_list; } ;
struct TYPE_2__ {int s_inode_list_lock; int s_inodes; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inode_sb_list_add(struct inode *inode)
{
 spin_lock(&inode->i_sb->s_inode_list_lock);
 list_add(&inode->i_sb_list, &inode->i_sb->s_inodes);
 spin_unlock(&inode->i_sb->s_inode_list_lock);
}
