
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file* file; } ;
struct splice_desc {size_t total_len; unsigned int flags; scalar_t__ num_spliced; int need_wakeup; int pos; TYPE_1__ u; } ;
struct pipe_inode_info {int buffers; int curbuf; int nrbufs; scalar_t__ files; struct pipe_buffer* bufs; } ;
struct pipe_buffer {size_t len; int offset; int page; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
struct bio_vec {size_t bv_len; int bv_offset; int bv_page; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 scalar_t__ ENODATA ;
 scalar_t__ ENOMEM ;
 int GFP_KERNEL ;
 int WRITE ;
 int iov_iter_bvec (struct iov_iter*,int ,struct bio_vec*,int,size_t) ;
 struct bio_vec* kcalloc (int,int,int ) ;
 int kfree (struct bio_vec*) ;
 scalar_t__ pipe_buf_confirm (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_buf_release (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int splice_from_pipe_begin (struct splice_desc*) ;
 int splice_from_pipe_end (struct pipe_inode_info*,struct splice_desc*) ;
 scalar_t__ splice_from_pipe_next (struct pipe_inode_info*,struct splice_desc*) ;
 scalar_t__ unlikely (scalar_t__) ;
 scalar_t__ vfs_iter_write (struct file*,struct iov_iter*,int *,int ) ;

ssize_t
iter_file_splice_write(struct pipe_inode_info *pipe, struct file *out,
     loff_t *ppos, size_t len, unsigned int flags)
{
 struct splice_desc sd = {
  .total_len = len,
  .flags = flags,
  .pos = *ppos,
  .u.file = out,
 };
 int nbufs = pipe->buffers;
 struct bio_vec *array = kcalloc(nbufs, sizeof(struct bio_vec),
     GFP_KERNEL);
 ssize_t ret;

 if (unlikely(!array))
  return -ENOMEM;

 pipe_lock(pipe);

 splice_from_pipe_begin(&sd);
 while (sd.total_len) {
  struct iov_iter from;
  size_t left;
  int n, idx;

  ret = splice_from_pipe_next(pipe, &sd);
  if (ret <= 0)
   break;

  if (unlikely(nbufs < pipe->buffers)) {
   kfree(array);
   nbufs = pipe->buffers;
   array = kcalloc(nbufs, sizeof(struct bio_vec),
     GFP_KERNEL);
   if (!array) {
    ret = -ENOMEM;
    break;
   }
  }


  left = sd.total_len;
  for (n = 0, idx = pipe->curbuf; left && n < pipe->nrbufs; n++, idx++) {
   struct pipe_buffer *buf = pipe->bufs + idx;
   size_t this_len = buf->len;

   if (this_len > left)
    this_len = left;

   if (idx == pipe->buffers - 1)
    idx = -1;

   ret = pipe_buf_confirm(pipe, buf);
   if (unlikely(ret)) {
    if (ret == -ENODATA)
     ret = 0;
    goto done;
   }

   array[n].bv_page = buf->page;
   array[n].bv_len = this_len;
   array[n].bv_offset = buf->offset;
   left -= this_len;
  }

  iov_iter_bvec(&from, WRITE, array, n, sd.total_len - left);
  ret = vfs_iter_write(out, &from, &sd.pos, 0);
  if (ret <= 0)
   break;

  sd.num_spliced += ret;
  sd.total_len -= ret;
  *ppos = sd.pos;


  while (ret) {
   struct pipe_buffer *buf = pipe->bufs + pipe->curbuf;
   if (ret >= buf->len) {
    ret -= buf->len;
    buf->len = 0;
    pipe_buf_release(pipe, buf);
    pipe->curbuf = (pipe->curbuf + 1) & (pipe->buffers - 1);
    pipe->nrbufs--;
    if (pipe->files)
     sd.need_wakeup = 1;
   } else {
    buf->offset += ret;
    buf->len -= ret;
    ret = 0;
   }
  }
 }
done:
 kfree(array);
 splice_from_pipe_end(pipe, &sd);

 pipe_unlock(pipe);

 if (sd.num_spliced)
  ret = sd.num_spliced;

 return ret;
}
