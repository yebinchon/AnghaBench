
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int file_inode (int ) ;
 int generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 int update_mctime (int ) ;

__attribute__((used)) static ssize_t ubifs_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 int err = update_mctime(file_inode(iocb->ki_filp));
 if (err)
  return err;

 return generic_file_write_iter(iocb, from);
}
