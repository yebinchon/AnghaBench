
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int nrbufs; int buffers; int curbuf; } ;
struct iov_iter {unsigned int type; int idx; size_t count; int start_idx; scalar_t__ iov_offset; struct pipe_inode_info* pipe; } ;


 int BUG_ON (int) ;
 unsigned int ITER_PIPE ;
 unsigned int READ ;
 int WARN_ON (int) ;

void iov_iter_pipe(struct iov_iter *i, unsigned int direction,
   struct pipe_inode_info *pipe,
   size_t count)
{
 BUG_ON(direction != READ);
 WARN_ON(pipe->nrbufs == pipe->buffers);
 i->type = ITER_PIPE | READ;
 i->pipe = pipe;
 i->idx = (pipe->curbuf + pipe->nrbufs) & (pipe->buffers - 1);
 i->iov_offset = 0;
 i->count = count;
 i->start_idx = i->idx;
}
