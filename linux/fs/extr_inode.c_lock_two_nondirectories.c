
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int I_MUTEX_NONDIR2 ;
 int S_ISDIR (int ) ;
 int inode_lock (struct inode*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int swap (struct inode*,struct inode*) ;

void lock_two_nondirectories(struct inode *inode1, struct inode *inode2)
{
 if (inode1 > inode2)
  swap(inode1, inode2);

 if (inode1 && !S_ISDIR(inode1->i_mode))
  inode_lock(inode1);
 if (inode2 && !S_ISDIR(inode2->i_mode) && inode2 != inode1)
  inode_lock_nested(inode2, I_MUTEX_NONDIR2);
}
