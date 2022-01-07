
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ READ ;
 scalar_t__ S_ISREG (int ) ;
 int ext4_direct_IO_read (struct kiocb*,struct iov_iter*) ;
 int ext4_direct_IO_write (struct kiocb*,struct iov_iter*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ fsverity_active (struct inode*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 int trace_ext4_direct_IO_enter (struct inode*,int ,size_t,scalar_t__) ;
 int trace_ext4_direct_IO_exit (struct inode*,int ,size_t,scalar_t__,int ) ;

__attribute__((used)) static ssize_t ext4_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 size_t count = iov_iter_count(iter);
 loff_t offset = iocb->ki_pos;
 ssize_t ret;





 if (fsverity_active(inode))
  return 0;




 if (ext4_should_journal_data(inode))
  return 0;


 if (ext4_has_inline_data(inode))
  return 0;

 trace_ext4_direct_IO_enter(inode, offset, count, iov_iter_rw(iter));
 if (iov_iter_rw(iter) == READ)
  ret = ext4_direct_IO_read(iocb, iter);
 else
  ret = ext4_direct_IO_write(iocb, iter);
 trace_ext4_direct_IO_exit(inode, offset, count, iov_iter_rw(iter), ret);
 return ret;
}
