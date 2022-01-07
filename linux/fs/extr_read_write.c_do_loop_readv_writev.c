
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iovec {scalar_t__ iov_len; int iov_base; } ;
struct iov_iter {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
typedef scalar_t__ ssize_t ;
typedef int rwf_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ (* read ) (struct file*,int ,scalar_t__,int *) ;scalar_t__ (* write ) (struct file*,int ,scalar_t__,int *) ;} ;


 scalar_t__ EOPNOTSUPP ;
 int READ ;
 int RWF_HIPRI ;
 int iov_iter_advance (struct iov_iter*,scalar_t__) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 struct iovec iov_iter_iovec (struct iov_iter*) ;
 scalar_t__ stub1 (struct file*,int ,scalar_t__,int *) ;
 scalar_t__ stub2 (struct file*,int ,scalar_t__,int *) ;

__attribute__((used)) static ssize_t do_loop_readv_writev(struct file *filp, struct iov_iter *iter,
  loff_t *ppos, int type, rwf_t flags)
{
 ssize_t ret = 0;

 if (flags & ~RWF_HIPRI)
  return -EOPNOTSUPP;

 while (iov_iter_count(iter)) {
  struct iovec iovec = iov_iter_iovec(iter);
  ssize_t nr;

  if (type == READ) {
   nr = filp->f_op->read(filp, iovec.iov_base,
           iovec.iov_len, ppos);
  } else {
   nr = filp->f_op->write(filp, iovec.iov_base,
            iovec.iov_len, ppos);
  }

  if (nr < 0) {
   if (!ret)
    ret = nr;
   break;
  }
  ret += nr;
  if (nr != iovec.iov_len)
   break;
  iov_iter_advance(iter, nr);
 }

 return ret;
}
