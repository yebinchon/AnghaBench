
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_tun {int ep; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {struct qrtr_tun* private_data; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EFAULT ;
 scalar_t__ ENOMEM ;
 int GFP_KERNEL ;
 int copy_from_iter_full (void*,size_t,struct iov_iter*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;
 scalar_t__ qrtr_endpoint_post (int *,void*,size_t) ;

__attribute__((used)) static ssize_t qrtr_tun_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *filp = iocb->ki_filp;
 struct qrtr_tun *tun = filp->private_data;
 size_t len = iov_iter_count(from);
 ssize_t ret;
 void *kbuf;

 kbuf = kzalloc(len, GFP_KERNEL);
 if (!kbuf)
  return -ENOMEM;

 if (!copy_from_iter_full(kbuf, len, from)) {
  kfree(kbuf);
  return -EFAULT;
 }

 ret = qrtr_endpoint_post(&tun->ep, kbuf, len);

 kfree(kbuf);
 return ret < 0 ? ret : len;
}
