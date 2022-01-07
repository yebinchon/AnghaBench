
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct file {int f_mode; int f_flags; } ;


 int EBADF ;
 int EINVAL ;
 int EISDIR ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_APPEND ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 struct inode* file_inode (struct file*) ;

int generic_file_rw_checks(struct file *file_in, struct file *file_out)
{
 struct inode *inode_in = file_inode(file_in);
 struct inode *inode_out = file_inode(file_out);


 if (S_ISDIR(inode_in->i_mode) || S_ISDIR(inode_out->i_mode))
  return -EISDIR;
 if (!S_ISREG(inode_in->i_mode) || !S_ISREG(inode_out->i_mode))
  return -EINVAL;

 if (!(file_in->f_mode & FMODE_READ) ||
     !(file_out->f_mode & FMODE_WRITE) ||
     (file_out->f_flags & O_APPEND))
  return -EBADF;

 return 0;
}
