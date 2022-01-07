
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_filp; } ;
struct iov_iter {int dummy; } ;
struct fuse_dev {int dummy; } ;
struct fuse_copy_state {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 int fuse_copy_init (struct fuse_copy_state*,int ,struct iov_iter*) ;
 int fuse_dev_do_write (struct fuse_dev*,struct fuse_copy_state*,int ) ;
 struct fuse_dev* fuse_get_dev (int ) ;
 int iov_iter_count (struct iov_iter*) ;
 int iter_is_iovec (struct iov_iter*) ;

__attribute__((used)) static ssize_t fuse_dev_write(struct kiocb *iocb, struct iov_iter *from)
{
 struct fuse_copy_state cs;
 struct fuse_dev *fud = fuse_get_dev(iocb->ki_filp);

 if (!fud)
  return -EPERM;

 if (!iter_is_iovec(from))
  return -EINVAL;

 fuse_copy_init(&cs, 0, from);

 return fuse_dev_do_write(fud, &cs, iov_iter_count(from));
}
