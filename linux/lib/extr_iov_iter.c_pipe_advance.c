
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {struct pipe_buffer* bufs; } ;
struct pipe_buffer {size_t offset; size_t len; } ;
struct iov_iter {size_t count; size_t iov_offset; int idx; struct pipe_inode_info* pipe; } ;


 int next_idx (int,struct pipe_inode_info*) ;
 int pipe_truncate (struct iov_iter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pipe_advance(struct iov_iter *i, size_t size)
{
 struct pipe_inode_info *pipe = i->pipe;
 if (unlikely(i->count < size))
  size = i->count;
 if (size) {
  struct pipe_buffer *buf;
  size_t off = i->iov_offset, left = size;
  int idx = i->idx;
  if (off)
   left += off - pipe->bufs[idx].offset;
  while (1) {
   buf = &pipe->bufs[idx];
   if (left <= buf->len)
    break;
   left -= buf->len;
   idx = next_idx(idx, pipe);
  }
  i->idx = idx;
  i->iov_offset = buf->offset + left;
 }
 i->count -= size;

 pipe_truncate(i);
}
