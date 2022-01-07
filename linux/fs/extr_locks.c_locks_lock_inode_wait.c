
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file_lock {int fl_flags; } ;


 int BUG () ;


 int flock_lock_inode_wait (struct inode*,struct file_lock*) ;
 int posix_lock_inode_wait (struct inode*,struct file_lock*) ;

int locks_lock_inode_wait(struct inode *inode, struct file_lock *fl)
{
 int res = 0;
 switch (fl->fl_flags & (128|129)) {
  case 128:
   res = posix_lock_inode_wait(inode, fl);
   break;
  case 129:
   res = flock_lock_inode_wait(inode, fl);
   break;
  default:
   BUG();
 }
 return res;
}
