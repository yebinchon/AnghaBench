
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct io_kiocb {int flags; struct kiocb rw; TYPE_1__* ctx; } ;
struct TYPE_4__ {int ra_pages; } ;
struct file {TYPE_2__ f_ra; } ;
struct async_list {size_t io_len; struct file* file; int io_start; } ;
struct TYPE_3__ {struct async_list* pending_async; } ;


 int PAGE_SHIFT ;
 int REQ_F_SEQ_PREV ;
 int VM_READAHEAD_PAGES ;
 scalar_t__ io_should_merge (struct async_list*,struct kiocb*) ;

__attribute__((used)) static void io_async_list_note(int rw, struct io_kiocb *req, size_t len)
{
 struct async_list *async_list = &req->ctx->pending_async[rw];
 struct kiocb *kiocb = &req->rw;
 struct file *filp = kiocb->ki_filp;

 if (io_should_merge(async_list, kiocb)) {
  unsigned long max_bytes;


  max_bytes = filp->f_ra.ra_pages << (PAGE_SHIFT + 3);
  if (!max_bytes)
   max_bytes = VM_READAHEAD_PAGES << (PAGE_SHIFT + 3);


  if (async_list->io_len + len <= max_bytes) {
   req->flags |= REQ_F_SEQ_PREV;
   async_list->io_len += len;
  } else {
   async_list->file = ((void*)0);
  }
 }


 if (async_list->file != filp) {
  async_list->io_start = kiocb->ki_pos;
  async_list->io_len = len;
  async_list->file = filp;
 }
}
