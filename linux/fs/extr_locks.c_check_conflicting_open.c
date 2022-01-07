
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_readcount; int i_writecount; } ;
struct file {int f_mode; } ;


 int EAGAIN ;
 int FL_LAYOUT ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 long const F_RDLCK ;
 long const F_WRLCK ;
 int atomic_read (int *) ;
 scalar_t__ inode_is_open_for_write (struct inode*) ;
 struct inode* locks_inode (struct file*) ;

__attribute__((used)) static int
check_conflicting_open(struct file *filp, const long arg, int flags)
{
 struct inode *inode = locks_inode(filp);
 int self_wcount = 0, self_rcount = 0;

 if (flags & FL_LAYOUT)
  return 0;

 if (arg == F_RDLCK)
  return inode_is_open_for_write(inode) ? -EAGAIN : 0;
 else if (arg != F_WRLCK)
  return 0;







 if (filp->f_mode & FMODE_WRITE)
  self_wcount = 1;
 else if (filp->f_mode & FMODE_READ)
  self_rcount = 1;

 if (atomic_read(&inode->i_writecount) != self_wcount ||
     atomic_read(&inode->i_readcount) != self_rcount)
  return -EAGAIN;

 return 0;
}
