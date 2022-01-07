
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_flags; int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int EINVAL ;
 int ETXTBSY ;
 int IOCB_APPEND ;
 int IOCB_DIRECT ;
 int IOCB_NOWAIT ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 int generic_write_check_limits (struct file*,int ,int*) ;
 int i_size_read (struct inode*) ;
 int iov_iter_count (struct iov_iter*) ;
 int iov_iter_truncate (struct iov_iter*,int) ;

inline ssize_t generic_write_checks(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 loff_t count;
 int ret;

 if (IS_SWAPFILE(inode))
  return -ETXTBSY;

 if (!iov_iter_count(from))
  return 0;


 if (iocb->ki_flags & IOCB_APPEND)
  iocb->ki_pos = i_size_read(inode);

 if ((iocb->ki_flags & IOCB_NOWAIT) && !(iocb->ki_flags & IOCB_DIRECT))
  return -EINVAL;

 count = iov_iter_count(from);
 ret = generic_write_check_limits(file, iocb->ki_pos, &count);
 if (ret)
  return ret;

 iov_iter_truncate(from, count);
 return iov_iter_count(from);
}
