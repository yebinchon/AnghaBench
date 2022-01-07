
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int nrbufs; scalar_t__ w_counter; int buffers; int readers; int writers; int wait; } ;
struct file {int f_mode; scalar_t__ f_version; struct pipe_inode_info* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t
pipe_poll(struct file *filp, poll_table *wait)
{
 __poll_t mask;
 struct pipe_inode_info *pipe = filp->private_data;
 int nrbufs;

 poll_wait(filp, &pipe->wait, wait);


 nrbufs = pipe->nrbufs;
 mask = 0;
 if (filp->f_mode & FMODE_READ) {
  mask = (nrbufs > 0) ? EPOLLIN | EPOLLRDNORM : 0;
  if (!pipe->writers && filp->f_version != pipe->w_counter)
   mask |= EPOLLHUP;
 }

 if (filp->f_mode & FMODE_WRITE) {
  mask |= (nrbufs < pipe->buffers) ? EPOLLOUT | EPOLLWRNORM : 0;




  if (!pipe->readers)
   mask |= EPOLLERR;
 }

 return mask;
}
