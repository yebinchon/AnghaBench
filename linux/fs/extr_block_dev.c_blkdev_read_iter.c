
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 struct inode* bdev_file_inode (struct file*) ;
 int generic_file_read_iter (struct kiocb*,struct iov_iter*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int iov_iter_truncate (struct iov_iter*,scalar_t__) ;

ssize_t blkdev_read_iter(struct kiocb *iocb, struct iov_iter *to)
{
 struct file *file = iocb->ki_filp;
 struct inode *bd_inode = bdev_file_inode(file);
 loff_t size = i_size_read(bd_inode);
 loff_t pos = iocb->ki_pos;

 if (pos >= size)
  return 0;

 size -= pos;
 iov_iter_truncate(to, size);
 return generic_file_read_iter(iocb, to);
}
