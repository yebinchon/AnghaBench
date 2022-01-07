
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_buffer {size_t offset; int len; struct page* page; } ;
struct page {int dummy; } ;
struct fuse_copy_state {scalar_t__ nr_segs; size_t offset; int len; int req; int iter; struct page* pg; struct pipe_buffer* pipebufs; struct pipe_buffer* currbuf; TYPE_1__* pipe; int write; } ;
struct TYPE_2__ {scalar_t__ buffers; } ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_HIGHUSER ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 int fuse_copy_finish (struct fuse_copy_state*) ;
 int iov_iter_advance (int ,int) ;
 int iov_iter_get_pages (int ,struct page**,int,int,size_t*) ;
 int lock_request (int ) ;
 int pipe_buf_confirm (TYPE_1__*,struct pipe_buffer*) ;
 int unlock_request (int ) ;

__attribute__((used)) static int fuse_copy_fill(struct fuse_copy_state *cs)
{
 struct page *page;
 int err;

 err = unlock_request(cs->req);
 if (err)
  return err;

 fuse_copy_finish(cs);
 if (cs->pipebufs) {
  struct pipe_buffer *buf = cs->pipebufs;

  if (!cs->write) {
   err = pipe_buf_confirm(cs->pipe, buf);
   if (err)
    return err;

   BUG_ON(!cs->nr_segs);
   cs->currbuf = buf;
   cs->pg = buf->page;
   cs->offset = buf->offset;
   cs->len = buf->len;
   cs->pipebufs++;
   cs->nr_segs--;
  } else {
   if (cs->nr_segs == cs->pipe->buffers)
    return -EIO;

   page = alloc_page(GFP_HIGHUSER);
   if (!page)
    return -ENOMEM;

   buf->page = page;
   buf->offset = 0;
   buf->len = 0;

   cs->currbuf = buf;
   cs->pg = page;
   cs->offset = 0;
   cs->len = PAGE_SIZE;
   cs->pipebufs++;
   cs->nr_segs++;
  }
 } else {
  size_t off;
  err = iov_iter_get_pages(cs->iter, &page, PAGE_SIZE, 1, &off);
  if (err < 0)
   return err;
  BUG_ON(!err);
  cs->len = err;
  cs->offset = off;
  cs->pg = page;
  iov_iter_advance(cs->iter, err);
 }

 return lock_request(cs->req);
}
