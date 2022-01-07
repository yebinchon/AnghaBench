
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct splice_pipe_desc {unsigned int nr_pages; int (* spd_release ) (struct splice_pipe_desc*,int ) ;int ops; TYPE_1__* partial; int * pages; } ;
struct pipe_inode_info {int nrbufs; int buffers; int curbuf; struct pipe_buffer* bufs; int readers; } ;
struct pipe_buffer {scalar_t__ len; scalar_t__ flags; int ops; int private; int offset; int page; } ;
typedef int ssize_t ;
struct TYPE_2__ {int private; scalar_t__ len; int offset; } ;


 int EAGAIN ;
 int EPIPE ;
 int SIGPIPE ;
 int current ;
 int send_sig (int ,int ,int ) ;
 int stub1 (struct splice_pipe_desc*,int ) ;
 scalar_t__ unlikely (int) ;

ssize_t splice_to_pipe(struct pipe_inode_info *pipe,
         struct splice_pipe_desc *spd)
{
 unsigned int spd_pages = spd->nr_pages;
 int ret = 0, page_nr = 0;

 if (!spd_pages)
  return 0;

 if (unlikely(!pipe->readers)) {
  send_sig(SIGPIPE, current, 0);
  ret = -EPIPE;
  goto out;
 }

 while (pipe->nrbufs < pipe->buffers) {
  int newbuf = (pipe->curbuf + pipe->nrbufs) & (pipe->buffers - 1);
  struct pipe_buffer *buf = pipe->bufs + newbuf;

  buf->page = spd->pages[page_nr];
  buf->offset = spd->partial[page_nr].offset;
  buf->len = spd->partial[page_nr].len;
  buf->private = spd->partial[page_nr].private;
  buf->ops = spd->ops;
  buf->flags = 0;

  pipe->nrbufs++;
  page_nr++;
  ret += buf->len;

  if (!--spd->nr_pages)
   break;
 }

 if (!ret)
  ret = -EAGAIN;

out:
 while (page_nr < spd_pages)
  spd->spd_release(spd, page_nr++);

 return ret;
}
