
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int nrbufs; int buffers; int curbuf; struct pipe_buffer* bufs; int readers; } ;
struct pipe_buffer {int len; } ;
typedef int ssize_t ;


 int EAGAIN ;
 int EPIPE ;
 int SIGPIPE ;
 int current ;
 int pipe_buf_release (struct pipe_inode_info*,struct pipe_buffer*) ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

ssize_t add_to_pipe(struct pipe_inode_info *pipe, struct pipe_buffer *buf)
{
 int ret;

 if (unlikely(!pipe->readers)) {
  send_sig(SIGPIPE, current, 0);
  ret = -EPIPE;
 } else if (pipe->nrbufs == pipe->buffers) {
  ret = -EAGAIN;
 } else {
  int newbuf = (pipe->curbuf + pipe->nrbufs) & (pipe->buffers - 1);
  pipe->bufs[newbuf] = *buf;
  pipe->nrbufs++;
  return buf->len;
 }
 pipe_buf_release(pipe, buf);
 return ret;
}
