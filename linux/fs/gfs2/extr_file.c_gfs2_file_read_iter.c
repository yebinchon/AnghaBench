
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int ENOTBLK ;
 int IOCB_DIRECT ;
 int generic_file_read_iter (struct kiocb*,struct iov_iter*) ;
 int gfs2_file_direct_read (struct kiocb*,struct iov_iter*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static ssize_t gfs2_file_read_iter(struct kiocb *iocb, struct iov_iter *to)
{
 ssize_t ret;

 if (iocb->ki_flags & IOCB_DIRECT) {
  ret = gfs2_file_direct_read(iocb, to);
  if (likely(ret != -ENOTBLK))
   return ret;
  iocb->ki_flags &= ~IOCB_DIRECT;
 }
 return generic_file_read_iter(iocb, to);
}
