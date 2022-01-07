
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int nrbufs; int buffers; int curbuf; struct pipe_buffer* bufs; int writers; int readers; } ;
struct pipe_buffer {size_t len; size_t offset; int flags; int * ops; } ;


 int EAGAIN ;
 int EFAULT ;
 int EPIPE ;
 int PIPE_BUF_FLAG_GIFT ;
 int SIGPIPE ;
 unsigned int SPLICE_F_NONBLOCK ;
 int current ;
 int ipipe_prep (struct pipe_inode_info*,unsigned int) ;
 int opipe_prep (struct pipe_inode_info*,unsigned int) ;
 int pipe_buf_get (struct pipe_inode_info*,struct pipe_buffer*) ;
 int pipe_buf_mark_unmergeable (struct pipe_buffer*) ;
 int pipe_double_lock (struct pipe_inode_info*,struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int send_sig (int ,int ,int ) ;
 int wakeup_pipe_readers (struct pipe_inode_info*) ;
 int wakeup_pipe_writers (struct pipe_inode_info*) ;

__attribute__((used)) static int splice_pipe_to_pipe(struct pipe_inode_info *ipipe,
          struct pipe_inode_info *opipe,
          size_t len, unsigned int flags)
{
 struct pipe_buffer *ibuf, *obuf;
 int ret = 0, nbuf;
 bool input_wakeup = 0;


retry:
 ret = ipipe_prep(ipipe, flags);
 if (ret)
  return ret;

 ret = opipe_prep(opipe, flags);
 if (ret)
  return ret;






 pipe_double_lock(ipipe, opipe);

 do {
  if (!opipe->readers) {
   send_sig(SIGPIPE, current, 0);
   if (!ret)
    ret = -EPIPE;
   break;
  }

  if (!ipipe->nrbufs && !ipipe->writers)
   break;





  if (!ipipe->nrbufs || opipe->nrbufs >= opipe->buffers) {

   if (ret)
    break;

   if (flags & SPLICE_F_NONBLOCK) {
    ret = -EAGAIN;
    break;
   }






   pipe_unlock(ipipe);
   pipe_unlock(opipe);
   goto retry;
  }

  ibuf = ipipe->bufs + ipipe->curbuf;
  nbuf = (opipe->curbuf + opipe->nrbufs) & (opipe->buffers - 1);
  obuf = opipe->bufs + nbuf;

  if (len >= ibuf->len) {



   *obuf = *ibuf;
   ibuf->ops = ((void*)0);
   opipe->nrbufs++;
   ipipe->curbuf = (ipipe->curbuf + 1) & (ipipe->buffers - 1);
   ipipe->nrbufs--;
   input_wakeup = 1;
  } else {




   if (!pipe_buf_get(ipipe, ibuf)) {
    if (ret == 0)
     ret = -EFAULT;
    break;
   }
   *obuf = *ibuf;





   obuf->flags &= ~PIPE_BUF_FLAG_GIFT;

   pipe_buf_mark_unmergeable(obuf);

   obuf->len = len;
   opipe->nrbufs++;
   ibuf->offset += obuf->len;
   ibuf->len -= obuf->len;
  }
  ret += obuf->len;
  len -= obuf->len;
 } while (len);

 pipe_unlock(ipipe);
 pipe_unlock(opipe);




 if (ret > 0)
  wakeup_pipe_readers(opipe);

 if (input_wakeup)
  wakeup_pipe_writers(ipipe);

 return ret;
}
