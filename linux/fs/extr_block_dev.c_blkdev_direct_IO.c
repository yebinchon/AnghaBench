
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int BIO_MAX_PAGES ;
 int __blkdev_direct_IO (struct kiocb*,struct iov_iter*,int ) ;
 int __blkdev_direct_IO_simple (struct kiocb*,struct iov_iter*,int) ;
 int iov_iter_npages (struct iov_iter*,int) ;
 scalar_t__ is_sync_kiocb (struct kiocb*) ;
 int min (int,int) ;

__attribute__((used)) static ssize_t
blkdev_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{
 int nr_pages;

 nr_pages = iov_iter_npages(iter, BIO_MAX_PAGES + 1);
 if (!nr_pages)
  return 0;
 if (is_sync_kiocb(iocb) && nr_pages <= BIO_MAX_PAGES)
  return __blkdev_direct_IO_simple(iocb, iter, nr_pages);

 return __blkdev_direct_IO(iocb, iter, min(nr_pages, BIO_MAX_PAGES));
}
