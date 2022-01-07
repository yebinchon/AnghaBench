
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_mode; } ;
struct file {int f_mode; TYPE_2__* f_op; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {long (* fallocate ) (struct file*,int,scalar_t__,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ s_maxbytes; } ;


 int EBADF ;
 int EFBIG ;
 int EINVAL ;
 int EISDIR ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPERM ;
 int ESPIPE ;
 int ETXTBSY ;
 int FALLOC_FL_COLLAPSE_RANGE ;
 int FALLOC_FL_INSERT_RANGE ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int FALLOC_FL_SUPPORTED_MASK ;
 int FALLOC_FL_UNSHARE_RANGE ;
 int FALLOC_FL_ZERO_RANGE ;
 int FMODE_WRITE ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 int MAY_WRITE ;
 int S_ISBLK (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 int S_ISREG (int ) ;
 int file_end_write (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int file_start_write (struct file*) ;
 int fsnotify_modify (struct file*) ;
 long security_file_permission (struct file*,int ) ;
 long stub1 (struct file*,int,scalar_t__,scalar_t__) ;

int vfs_fallocate(struct file *file, int mode, loff_t offset, loff_t len)
{
 struct inode *inode = file_inode(file);
 long ret;

 if (offset < 0 || len <= 0)
  return -EINVAL;


 if (mode & ~FALLOC_FL_SUPPORTED_MASK)
  return -EOPNOTSUPP;


 if ((mode & (FALLOC_FL_PUNCH_HOLE | FALLOC_FL_ZERO_RANGE)) ==
     (FALLOC_FL_PUNCH_HOLE | FALLOC_FL_ZERO_RANGE))
  return -EOPNOTSUPP;


 if ((mode & FALLOC_FL_PUNCH_HOLE) &&
     !(mode & FALLOC_FL_KEEP_SIZE))
  return -EOPNOTSUPP;


 if ((mode & FALLOC_FL_COLLAPSE_RANGE) &&
     (mode & ~FALLOC_FL_COLLAPSE_RANGE))
  return -EINVAL;


 if ((mode & FALLOC_FL_INSERT_RANGE) &&
     (mode & ~FALLOC_FL_INSERT_RANGE))
  return -EINVAL;


 if ((mode & FALLOC_FL_UNSHARE_RANGE) &&
     (mode & ~(FALLOC_FL_UNSHARE_RANGE | FALLOC_FL_KEEP_SIZE)))
  return -EINVAL;

 if (!(file->f_mode & FMODE_WRITE))
  return -EBADF;




 if ((mode & ~FALLOC_FL_KEEP_SIZE) && IS_APPEND(inode))
  return -EPERM;

 if (IS_IMMUTABLE(inode))
  return -EPERM;




 if (IS_SWAPFILE(inode))
  return -ETXTBSY;





 ret = security_file_permission(file, MAY_WRITE);
 if (ret)
  return ret;

 if (S_ISFIFO(inode->i_mode))
  return -ESPIPE;

 if (S_ISDIR(inode->i_mode))
  return -EISDIR;

 if (!S_ISREG(inode->i_mode) && !S_ISBLK(inode->i_mode))
  return -ENODEV;


 if (((offset + len) > inode->i_sb->s_maxbytes) || ((offset + len) < 0))
  return -EFBIG;

 if (!file->f_op->fallocate)
  return -EOPNOTSUPP;

 file_start_write(file);
 ret = file->f_op->fallocate(file, mode, offset, len);
 if (ret == 0)
  fsnotify_modify(file);

 file_end_write(file);
 return ret;
}
