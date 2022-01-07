
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; int ki_pos; } ;
struct iov_iter {int dummy; } ;
struct fuse_io_priv {int dummy; } ;
typedef int ssize_t ;


 struct fuse_io_priv FUSE_IO_PRIV_SYNC (struct kiocb*) ;
 int IOCB_DIRECT ;
 int __fuse_direct_read (struct fuse_io_priv*,struct iov_iter*,int *) ;
 int fuse_direct_IO (struct kiocb*,struct iov_iter*) ;
 int is_sync_kiocb (struct kiocb*) ;

__attribute__((used)) static ssize_t fuse_direct_read_iter(struct kiocb *iocb, struct iov_iter *to)
{
 ssize_t res;

 if (!is_sync_kiocb(iocb) && iocb->ki_flags & IOCB_DIRECT) {
  res = fuse_direct_IO(iocb, to);
 } else {
  struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(iocb);

  res = __fuse_direct_read(&io, to, &iocb->ki_pos);
 }

 return res;
}
