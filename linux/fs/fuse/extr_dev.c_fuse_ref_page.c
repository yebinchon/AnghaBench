
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_buffer {unsigned int offset; unsigned int len; struct page* page; } ;
struct page {int dummy; } ;
struct fuse_copy_state {scalar_t__ nr_segs; scalar_t__ len; struct pipe_buffer* pipebufs; int req; TYPE_1__* pipe; } ;
struct TYPE_2__ {scalar_t__ buffers; } ;


 int EIO ;
 int fuse_copy_finish (struct fuse_copy_state*) ;
 int get_page (struct page*) ;
 int unlock_request (int ) ;

__attribute__((used)) static int fuse_ref_page(struct fuse_copy_state *cs, struct page *page,
    unsigned offset, unsigned count)
{
 struct pipe_buffer *buf;
 int err;

 if (cs->nr_segs == cs->pipe->buffers)
  return -EIO;

 err = unlock_request(cs->req);
 if (err)
  return err;

 fuse_copy_finish(cs);

 buf = cs->pipebufs;
 get_page(page);
 buf->page = page;
 buf->offset = offset;
 buf->len = count;

 cs->pipebufs++;
 cs->nr_segs++;
 cs->len = 0;

 return 0;
}
