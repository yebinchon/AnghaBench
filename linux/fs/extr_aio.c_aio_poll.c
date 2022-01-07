
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_8__ {int entry; } ;
struct poll_iocb {int events; int done; int cancelled; TYPE_3__* head; TYPE_4__ wait; int file; int work; } ;
struct kioctx {int ctx_lock; int active_reqs; } ;
struct iocb {scalar_t__ aio_buf; scalar_t__ aio_rw_flags; scalar_t__ aio_nbytes; scalar_t__ aio_offset; } ;
struct TYPE_6__ {int _key; int _qproc; } ;
struct aio_poll_table {int error; TYPE_2__ pt; struct aio_kiocb* iocb; } ;
struct TYPE_5__ {int res; } ;
struct aio_kiocb {TYPE_1__ ki_res; int ki_cancel; int ki_list; struct poll_iocb poll; struct kioctx* ki_ctx; } ;
typedef int __poll_t ;
struct TYPE_7__ {int lock; } ;


 int EINVAL ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int WRITE_ONCE (int,int) ;
 int aio_poll_cancel ;
 int aio_poll_complete_work ;
 int aio_poll_queue_proc ;
 int aio_poll_wake ;
 int demangle_poll (scalar_t__) ;
 int init_waitqueue_func_entry (TYPE_4__*,int ) ;
 int iocb_put (struct aio_kiocb*) ;
 scalar_t__ likely (TYPE_3__*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mangle_poll (int) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int ) ;
 int vfs_poll (int ,TYPE_2__*) ;

__attribute__((used)) static int aio_poll(struct aio_kiocb *aiocb, const struct iocb *iocb)
{
 struct kioctx *ctx = aiocb->ki_ctx;
 struct poll_iocb *req = &aiocb->poll;
 struct aio_poll_table apt;
 bool cancel = 0;
 __poll_t mask;


 if ((u16)iocb->aio_buf != iocb->aio_buf)
  return -EINVAL;

 if (iocb->aio_offset || iocb->aio_nbytes || iocb->aio_rw_flags)
  return -EINVAL;

 INIT_WORK(&req->work, aio_poll_complete_work);
 req->events = demangle_poll(iocb->aio_buf) | EPOLLERR | EPOLLHUP;

 req->head = ((void*)0);
 req->done = 0;
 req->cancelled = 0;

 apt.pt._qproc = aio_poll_queue_proc;
 apt.pt._key = req->events;
 apt.iocb = aiocb;
 apt.error = -EINVAL;


 INIT_LIST_HEAD(&req->wait.entry);
 init_waitqueue_func_entry(&req->wait, aio_poll_wake);

 mask = vfs_poll(req->file, &apt.pt) & req->events;
 spin_lock_irq(&ctx->ctx_lock);
 if (likely(req->head)) {
  spin_lock(&req->head->lock);
  if (unlikely(list_empty(&req->wait.entry))) {
   if (apt.error)
    cancel = 1;
   apt.error = 0;
   mask = 0;
  }
  if (mask || apt.error) {
   list_del_init(&req->wait.entry);
  } else if (cancel) {
   WRITE_ONCE(req->cancelled, 1);
  } else if (!req->done) {
   list_add_tail(&aiocb->ki_list, &ctx->active_reqs);
   aiocb->ki_cancel = aio_poll_cancel;
  }
  spin_unlock(&req->head->lock);
 }
 if (mask) {
  aiocb->ki_res.res = mangle_poll(mask);
  apt.error = 0;
 }
 spin_unlock_irq(&ctx->ctx_lock);
 if (mask)
  iocb_put(aiocb);
 return apt.error;
}
