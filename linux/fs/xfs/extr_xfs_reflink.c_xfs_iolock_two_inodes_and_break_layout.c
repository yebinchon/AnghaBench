
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EWOULDBLOCK ;
 int I_MUTEX_NONDIR2 ;
 int break_layout (struct inode*,int) ;
 int inode_lock (struct inode*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int swap (struct inode*,struct inode*) ;

__attribute__((used)) static int
xfs_iolock_two_inodes_and_break_layout(
 struct inode *src,
 struct inode *dest)
{
 int error;

 if (src > dest)
  swap(src, dest);

retry:

 error = break_layout(src, 1);
 if (error)
  return error;
 if (src != dest) {
  error = break_layout(dest, 1);
  if (error)
   return error;
 }


 inode_lock(src);
 error = break_layout(src, 0);
 if (error) {
  inode_unlock(src);
  if (error == -EWOULDBLOCK)
   goto retry;
  return error;
 }

 if (src == dest)
  return 0;


 inode_lock_nested(dest, I_MUTEX_NONDIR2);
 error = break_layout(dest, 0);
 if (error) {
  inode_unlock(src);
  inode_unlock(dest);
  if (error == -EWOULDBLOCK)
   goto retry;
  return error;
 }

 return 0;
}
