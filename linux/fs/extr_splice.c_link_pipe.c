
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int nrbufs; int buffers; int curbuf; scalar_t__ waiting_writers; struct pipe_buffer* bufs; int readers; } ;
struct pipe_buffer {size_t len; int flags; } ;


 int EAGAIN ;
 int EFAULT ;
 int EPIPE ;
 int PIPE_BUF_FLAG_GIFT ;
 int SIGPIPE ;
 unsigned int SPLICE_F_NONBLOCK ;
 int current ;
 int pipe_buf_get (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_buf_mark_unmergeable (struct pipe_buffer*) ;
 int pipe_double_lock (struct pipe_inode_info*,struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int send_sig (int ,int ,int ) ;
 int wakeup_pipe_readers (struct pipe_inode_info*) ;

__attribute__((used)) static int link_pipe(struct pipe_inode_info *ipipe,
       struct pipe_inode_info *opipe,
       size_t len, unsigned int flags)
{
 struct pipe_buffer *ibuf, *obuf;
 int ret = 0, i = 0, nbuf;






 pipe_double_lock(ipipe, opipe);

 do {
  if (!opipe->readers) {
   send_sig(SIGPIPE, current, 0);
   if (!ret)
    ret = -EPIPE;
   break;
  }





  if (i >= ipipe->nrbufs || opipe->nrbufs >= opipe->buffers)
   break;

  ibuf = ipipe->bufs + ((ipipe->curbuf + i) & (ipipe->buffers-1));
  nbuf = (opipe->curbuf + opipe->nrbufs) & (opipe->buffers - 1);





  if (!pipe_buf_get(ipipe, ibuf)) {
   if (ret == 0)
    ret = -EFAULT;
   break;
  }

  obuf = opipe->bufs + nbuf;
  *obuf = *ibuf;





  obuf->flags &= ~PIPE_BUF_FLAG_GIFT;

  pipe_buf_mark_unmergeable(obuf);

  if (obuf->len > len)
   obuf->len = len;

  opipe->nrbufs++;
  ret += obuf->len;
  len -= obuf->len;
  i++;
 } while (len);





 if (!ret && ipipe->waiting_writers && (flags & SPLICE_F_NONBLOCK))
  ret = -EAGAIN;

 pipe_unlock(ipipe);
 pipe_unlock(opipe);




 if (ret > 0)
  wakeup_pipe_readers(opipe);

 return ret;
}
