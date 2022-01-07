
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int nrbufs; int curbuf; int buffers; TYPE_1__* bufs; } ;
struct iov_iter {size_t iov_offset; int idx; struct pipe_inode_info* pipe; } ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ len; } ;


 int next_idx (int,struct pipe_inode_info*) ;
 int pipe_buf_release (struct pipe_inode_info*,TYPE_1__*) ;

__attribute__((used)) static inline void pipe_truncate(struct iov_iter *i)
{
 struct pipe_inode_info *pipe = i->pipe;
 if (pipe->nrbufs) {
  size_t off = i->iov_offset;
  int idx = i->idx;
  int nrbufs = (idx - pipe->curbuf) & (pipe->buffers - 1);
  if (off) {
   pipe->bufs[idx].len = off - pipe->bufs[idx].offset;
   idx = next_idx(idx, pipe);
   nrbufs++;
  }
  while (pipe->nrbufs > nrbufs) {
   pipe_buf_release(pipe, &pipe->bufs[idx]);
   idx = next_idx(idx, pipe);
   pipe->nrbufs--;
  }
 }
}
