
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int S_ISDIR (int ) ;
 int inode_unlock (struct inode*) ;

void unlock_two_nondirectories(struct inode *inode1, struct inode *inode2)
{
 if (inode1 && !S_ISDIR(inode1->i_mode))
  inode_unlock(inode1);
 if (inode2 && !S_ISDIR(inode2->i_mode) && inode2 != inode1)
  inode_unlock(inode2);
}
