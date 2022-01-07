
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_iqueue {int lock; int connected; int waitq; } ;
struct fuse_dev {TYPE_1__* fc; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {struct fuse_iqueue iq; } ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 struct fuse_dev* fuse_get_dev (struct file*) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ request_pending (struct fuse_iqueue*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __poll_t fuse_dev_poll(struct file *file, poll_table *wait)
{
 __poll_t mask = EPOLLOUT | EPOLLWRNORM;
 struct fuse_iqueue *fiq;
 struct fuse_dev *fud = fuse_get_dev(file);

 if (!fud)
  return EPOLLERR;

 fiq = &fud->fc->iq;
 poll_wait(file, &fiq->waitq, wait);

 spin_lock(&fiq->lock);
 if (!fiq->connected)
  mask = EPOLLERR;
 else if (request_pending(fiq))
  mask |= EPOLLIN | EPOLLRDNORM;
 spin_unlock(&fiq->lock);

 return mask;
}
