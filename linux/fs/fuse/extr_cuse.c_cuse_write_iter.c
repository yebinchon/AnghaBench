
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
struct fuse_io_priv {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int FUSE_DIO_CUSE ;
 int FUSE_DIO_WRITE ;
 struct fuse_io_priv FUSE_IO_PRIV_SYNC (struct kiocb*) ;
 int fuse_direct_io (struct fuse_io_priv*,struct iov_iter*,int *,int) ;

__attribute__((used)) static ssize_t cuse_write_iter(struct kiocb *kiocb, struct iov_iter *from)
{
 struct fuse_io_priv io = FUSE_IO_PRIV_SYNC(kiocb);
 loff_t pos = 0;




 return fuse_direct_io(&io, from, &pos,
         FUSE_DIO_WRITE | FUSE_DIO_CUSE);
}
