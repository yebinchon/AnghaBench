
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct io_uring_sqe {int poll_events; scalar_t__ buf_index; scalar_t__ len; scalar_t__ off; scalar_t__ ioprio; scalar_t__ addr; } ;
struct io_ring_ctx {int flags; int completion_lock; int cancel_list; } ;
struct TYPE_6__ {int _key; int _qproc; } ;
struct io_poll_table {int error; TYPE_2__ pt; struct io_kiocb* req; } ;
struct TYPE_8__ {int entry; } ;
struct io_poll_iocb {int events; int done; int canceled; TYPE_3__* head; TYPE_4__ wait; int file; } ;
struct TYPE_5__ {int * sqe; } ;
struct io_kiocb {int list; int work; TYPE_1__ submit; struct io_ring_ctx* ctx; struct io_poll_iocb poll; } ;
typedef int __poll_t ;
struct TYPE_7__ {int lock; } ;


 int EBADF ;
 int EINVAL ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IORING_SETUP_IOPOLL ;
 int READ_ONCE (int ) ;
 int WRITE_ONCE (int,int) ;
 int demangle_poll (int ) ;
 int init_waitqueue_func_entry (TYPE_4__*,int ) ;
 int io_cqring_ev_posted (struct io_ring_ctx*) ;
 int io_poll_complete (struct io_ring_ctx*,struct io_kiocb*,int) ;
 int io_poll_complete_work ;
 int io_poll_queue_proc ;
 int io_poll_wake ;
 int io_put_req (struct io_kiocb*) ;
 scalar_t__ likely (TYPE_3__*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int vfs_poll (int ,TYPE_2__*) ;

__attribute__((used)) static int io_poll_add(struct io_kiocb *req, const struct io_uring_sqe *sqe)
{
 struct io_poll_iocb *poll = &req->poll;
 struct io_ring_ctx *ctx = req->ctx;
 struct io_poll_table ipt;
 bool cancel = 0;
 __poll_t mask;
 u16 events;

 if (unlikely(req->ctx->flags & IORING_SETUP_IOPOLL))
  return -EINVAL;
 if (sqe->addr || sqe->ioprio || sqe->off || sqe->len || sqe->buf_index)
  return -EINVAL;
 if (!poll->file)
  return -EBADF;

 req->submit.sqe = ((void*)0);
 INIT_WORK(&req->work, io_poll_complete_work);
 events = READ_ONCE(sqe->poll_events);
 poll->events = demangle_poll(events) | EPOLLERR | EPOLLHUP;

 poll->head = ((void*)0);
 poll->done = 0;
 poll->canceled = 0;

 ipt.pt._qproc = io_poll_queue_proc;
 ipt.pt._key = poll->events;
 ipt.req = req;
 ipt.error = -EINVAL;


 INIT_LIST_HEAD(&poll->wait.entry);
 init_waitqueue_func_entry(&poll->wait, io_poll_wake);

 INIT_LIST_HEAD(&req->list);

 mask = vfs_poll(poll->file, &ipt.pt) & poll->events;

 spin_lock_irq(&ctx->completion_lock);
 if (likely(poll->head)) {
  spin_lock(&poll->head->lock);
  if (unlikely(list_empty(&poll->wait.entry))) {
   if (ipt.error)
    cancel = 1;
   ipt.error = 0;
   mask = 0;
  }
  if (mask || ipt.error)
   list_del_init(&poll->wait.entry);
  else if (cancel)
   WRITE_ONCE(poll->canceled, 1);
  else if (!poll->done)
   list_add_tail(&req->list, &ctx->cancel_list);
  spin_unlock(&poll->head->lock);
 }
 if (mask) {
  ipt.error = 0;
  io_poll_complete(ctx, req, mask);
 }
 spin_unlock_irq(&ctx->completion_lock);

 if (mask) {
  io_cqring_ev_posted(ctx);
  io_put_req(req);
 }
 return ipt.error;
}
