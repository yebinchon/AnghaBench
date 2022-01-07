
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct fuse_file {int open_flags; } ;
struct file {struct fuse_file* private_data; } ;
typedef int ssize_t ;


 int EIO ;
 int FOPEN_DIRECT_IO ;
 int file_inode (struct file*) ;
 int fuse_cache_write_iter (struct kiocb*,struct iov_iter*) ;
 int fuse_direct_write_iter (struct kiocb*,struct iov_iter*) ;
 scalar_t__ is_bad_inode (int ) ;

__attribute__((used)) static ssize_t fuse_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct fuse_file *ff = file->private_data;

 if (is_bad_inode(file_inode(file)))
  return -EIO;

 if (!(ff->open_flags & FOPEN_DIRECT_IO))
  return fuse_cache_write_iter(iocb, from);
 else
  return fuse_direct_write_iter(iocb, from);
}
