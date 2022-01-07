
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userfaultfd_ctx {int state; int event_wqh; int fault_pending_wqh; int fd_wqh; } ;
struct file {int f_flags; struct userfaultfd_ctx* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int O_NONBLOCK ;


 int WARN_ON_ONCE (int) ;
 int poll_wait (struct file*,int *,int *) ;
 int smp_mb () ;
 int unlikely (int) ;
 int waitqueue_active (int *) ;

__attribute__((used)) static __poll_t userfaultfd_poll(struct file *file, poll_table *wait)
{
 struct userfaultfd_ctx *ctx = file->private_data;
 __poll_t ret;

 poll_wait(file, &ctx->fd_wqh, wait);

 switch (ctx->state) {
 case 128:
  return EPOLLERR;
 case 129:




  if (unlikely(!(file->f_flags & O_NONBLOCK)))
   return EPOLLERR;
  ret = 0;
  smp_mb();
  if (waitqueue_active(&ctx->fault_pending_wqh))
   ret = EPOLLIN;
  else if (waitqueue_active(&ctx->event_wqh))
   ret = EPOLLIN;

  return ret;
 default:
  WARN_ON_ONCE(1);
  return EPOLLERR;
 }
}
