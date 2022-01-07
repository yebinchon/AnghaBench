
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int nrbufs; int curbuf; int buffers; int fasync_writers; int wait; int waiting_writers; int writers; struct pipe_buffer* bufs; } ;
struct pipe_buffer {size_t len; size_t offset; int flags; int page; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct pipe_inode_info* private_data; } ;
typedef size_t ssize_t ;


 size_t EAGAIN ;
 size_t EFAULT ;
 int EPOLLOUT ;
 int EPOLLWRNORM ;
 size_t ERESTARTSYS ;
 int O_NONBLOCK ;
 int PIPE_BUF_FLAG_PACKET ;
 int POLL_OUT ;
 int SIGIO ;
 int __pipe_lock (struct pipe_inode_info*) ;
 int __pipe_unlock (struct pipe_inode_info*) ;
 size_t copy_page_to_iter (int ,size_t,size_t,struct iov_iter*) ;
 int current ;
 int file_accessed (struct file*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int kill_fasync (int *,int ,int ) ;
 int pipe_buf_confirm (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_buf_release (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_wait (struct pipe_inode_info*) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible_sync_poll (int *,int) ;

__attribute__((used)) static ssize_t
pipe_read(struct kiocb *iocb, struct iov_iter *to)
{
 size_t total_len = iov_iter_count(to);
 struct file *filp = iocb->ki_filp;
 struct pipe_inode_info *pipe = filp->private_data;
 int do_wakeup;
 ssize_t ret;


 if (unlikely(total_len == 0))
  return 0;

 do_wakeup = 0;
 ret = 0;
 __pipe_lock(pipe);
 for (;;) {
  int bufs = pipe->nrbufs;
  if (bufs) {
   int curbuf = pipe->curbuf;
   struct pipe_buffer *buf = pipe->bufs + curbuf;
   size_t chars = buf->len;
   size_t written;
   int error;

   if (chars > total_len)
    chars = total_len;

   error = pipe_buf_confirm(pipe, buf);
   if (error) {
    if (!ret)
     ret = error;
    break;
   }

   written = copy_page_to_iter(buf->page, buf->offset, chars, to);
   if (unlikely(written < chars)) {
    if (!ret)
     ret = -EFAULT;
    break;
   }
   ret += chars;
   buf->offset += chars;
   buf->len -= chars;


   if (buf->flags & PIPE_BUF_FLAG_PACKET) {
    total_len = chars;
    buf->len = 0;
   }

   if (!buf->len) {
    pipe_buf_release(pipe, buf);
    curbuf = (curbuf + 1) & (pipe->buffers - 1);
    pipe->curbuf = curbuf;
    pipe->nrbufs = --bufs;
    do_wakeup = 1;
   }
   total_len -= chars;
   if (!total_len)
    break;
  }
  if (bufs)
   continue;
  if (!pipe->writers)
   break;
  if (!pipe->waiting_writers) {





   if (ret)
    break;
   if (filp->f_flags & O_NONBLOCK) {
    ret = -EAGAIN;
    break;
   }
  }
  if (signal_pending(current)) {
   if (!ret)
    ret = -ERESTARTSYS;
   break;
  }
  if (do_wakeup) {
   wake_up_interruptible_sync_poll(&pipe->wait, EPOLLOUT | EPOLLWRNORM);
    kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
  }
  pipe_wait(pipe);
 }
 __pipe_unlock(pipe);


 if (do_wakeup) {
  wake_up_interruptible_sync_poll(&pipe->wait, EPOLLOUT | EPOLLWRNORM);
  kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
 }
 if (ret > 0)
  file_accessed(filp);
 return ret;
}
