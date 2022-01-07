
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int curbuf; scalar_t__ nrbufs; struct pipe_buffer* bufs; } ;
struct pipe_buffer {size_t len; size_t offset; struct page* page; int * ops; } ;
struct page {int dummy; } ;
struct iov_iter {size_t count; size_t iov_offset; int idx; struct pipe_inode_info* pipe; } ;


 int get_page (struct page*) ;
 int next_idx (int,struct pipe_inode_info*) ;
 int page_cache_pipe_buf_ops ;
 int sanity (struct iov_iter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static size_t copy_page_to_iter_pipe(struct page *page, size_t offset, size_t bytes,
    struct iov_iter *i)
{
 struct pipe_inode_info *pipe = i->pipe;
 struct pipe_buffer *buf;
 size_t off;
 int idx;

 if (unlikely(bytes > i->count))
  bytes = i->count;

 if (unlikely(!bytes))
  return 0;

 if (!sanity(i))
  return 0;

 off = i->iov_offset;
 idx = i->idx;
 buf = &pipe->bufs[idx];
 if (off) {
  if (offset == off && buf->page == page) {

   buf->len += bytes;
   i->iov_offset += bytes;
   goto out;
  }
  idx = next_idx(idx, pipe);
  buf = &pipe->bufs[idx];
 }
 if (idx == pipe->curbuf && pipe->nrbufs)
  return 0;
 pipe->nrbufs++;
 buf->ops = &page_cache_pipe_buf_ops;
 get_page(buf->page = page);
 buf->offset = offset;
 buf->len = bytes;
 i->iov_offset = offset + bytes;
 i->idx = idx;
out:
 i->count -= bytes;
 return bytes;
}
