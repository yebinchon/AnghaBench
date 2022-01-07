
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int nrbufs; int curbuf; int buffers; int fasync_readers; int wait; int waiting_writers; struct page* tmp_page; struct pipe_buffer* bufs; int readers; } ;
struct pipe_buffer {int offset; int len; scalar_t__ flags; int * ops; struct page* page; } ;
struct page {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct pipe_inode_info* private_data; } ;
typedef int ssize_t ;
struct TYPE_2__ {int i_sb; } ;


 int EAGAIN ;
 int EFAULT ;
 int ENOMEM ;
 int EPIPE ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int ERESTARTSYS ;
 int GFP_HIGHUSER ;
 int O_NONBLOCK ;
 int PAGE_SIZE ;
 scalar_t__ PIPE_BUF_FLAG_PACKET ;
 int POLL_IN ;
 int SIGIO ;
 int SIGPIPE ;
 int __GFP_ACCOUNT ;
 int __pipe_lock (struct pipe_inode_info*) ;
 int __pipe_unlock (struct pipe_inode_info*) ;
 struct page* alloc_page (int) ;
 int anon_pipe_buf_ops ;
 int copy_page_from_iter (struct page*,int,int,struct iov_iter*) ;
 int current ;
 TYPE_1__* file_inode (struct file*) ;
 int file_update_time (struct file*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ is_packetized (struct file*) ;
 int kill_fasync (int *,int ,int ) ;
 int packet_pipe_buf_ops ;
 scalar_t__ pipe_buf_can_merge (struct pipe_buffer*) ;
 int pipe_buf_confirm (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_wait (struct pipe_inode_info*) ;
 int sb_end_write (int ) ;
 scalar_t__ sb_start_write_trylock (int ) ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible_sync_poll (int *,int) ;

__attribute__((used)) static ssize_t
pipe_write(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *filp = iocb->ki_filp;
 struct pipe_inode_info *pipe = filp->private_data;
 ssize_t ret = 0;
 int do_wakeup = 0;
 size_t total_len = iov_iter_count(from);
 ssize_t chars;


 if (unlikely(total_len == 0))
  return 0;

 __pipe_lock(pipe);

 if (!pipe->readers) {
  send_sig(SIGPIPE, current, 0);
  ret = -EPIPE;
  goto out;
 }


 chars = total_len & (PAGE_SIZE-1);
 if (pipe->nrbufs && chars != 0) {
  int lastbuf = (pipe->curbuf + pipe->nrbufs - 1) &
       (pipe->buffers - 1);
  struct pipe_buffer *buf = pipe->bufs + lastbuf;
  int offset = buf->offset + buf->len;

  if (pipe_buf_can_merge(buf) && offset + chars <= PAGE_SIZE) {
   ret = pipe_buf_confirm(pipe, buf);
   if (ret)
    goto out;

   ret = copy_page_from_iter(buf->page, offset, chars, from);
   if (unlikely(ret < chars)) {
    ret = -EFAULT;
    goto out;
   }
   do_wakeup = 1;
   buf->len += ret;
   if (!iov_iter_count(from))
    goto out;
  }
 }

 for (;;) {
  int bufs;

  if (!pipe->readers) {
   send_sig(SIGPIPE, current, 0);
   if (!ret)
    ret = -EPIPE;
   break;
  }
  bufs = pipe->nrbufs;
  if (bufs < pipe->buffers) {
   int newbuf = (pipe->curbuf + bufs) & (pipe->buffers-1);
   struct pipe_buffer *buf = pipe->bufs + newbuf;
   struct page *page = pipe->tmp_page;
   int copied;

   if (!page) {
    page = alloc_page(GFP_HIGHUSER | __GFP_ACCOUNT);
    if (unlikely(!page)) {
     ret = ret ? : -ENOMEM;
     break;
    }
    pipe->tmp_page = page;
   }





   do_wakeup = 1;
   copied = copy_page_from_iter(page, 0, PAGE_SIZE, from);
   if (unlikely(copied < PAGE_SIZE && iov_iter_count(from))) {
    if (!ret)
     ret = -EFAULT;
    break;
   }
   ret += copied;


   buf->page = page;
   buf->ops = &anon_pipe_buf_ops;
   buf->offset = 0;
   buf->len = copied;
   buf->flags = 0;
   if (is_packetized(filp)) {
    buf->ops = &packet_pipe_buf_ops;
    buf->flags = PIPE_BUF_FLAG_PACKET;
   }
   pipe->nrbufs = ++bufs;
   pipe->tmp_page = ((void*)0);

   if (!iov_iter_count(from))
    break;
  }
  if (bufs < pipe->buffers)
   continue;
  if (filp->f_flags & O_NONBLOCK) {
   if (!ret)
    ret = -EAGAIN;
   break;
  }
  if (signal_pending(current)) {
   if (!ret)
    ret = -ERESTARTSYS;
   break;
  }
  if (do_wakeup) {
   wake_up_interruptible_sync_poll(&pipe->wait, EPOLLIN | EPOLLRDNORM);
   kill_fasync(&pipe->fasync_readers, SIGIO, POLL_IN);
   do_wakeup = 0;
  }
  pipe->waiting_writers++;
  pipe_wait(pipe);
  pipe->waiting_writers--;
 }
out:
 __pipe_unlock(pipe);
 if (do_wakeup) {
  wake_up_interruptible_sync_poll(&pipe->wait, EPOLLIN | EPOLLRDNORM);
  kill_fasync(&pipe->fasync_readers, SIGIO, POLL_IN);
 }
 if (ret > 0 && sb_start_write_trylock(file_inode(filp)->i_sb)) {
  int err = file_update_time(filp);
  if (err)
   ret = err;
  sb_end_write(file_inode(filp)->i_sb);
 }
 return ret;
}
