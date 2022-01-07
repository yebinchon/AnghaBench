
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
struct io_poll_iocb {TYPE_2__* head; TYPE_1__ wait; int canceled; } ;
struct io_kiocb {int list; int ctx; struct io_poll_iocb poll; } ;
struct TYPE_4__ {int lock; } ;


 int WRITE_ONCE (int ,int) ;
 int io_queue_async_work (int ,struct io_kiocb*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void io_poll_remove_one(struct io_kiocb *req)
{
 struct io_poll_iocb *poll = &req->poll;

 spin_lock(&poll->head->lock);
 WRITE_ONCE(poll->canceled, 1);
 if (!list_empty(&poll->wait.entry)) {
  list_del_init(&poll->wait.entry);
  io_queue_async_work(req->ctx, req);
 }
 spin_unlock(&poll->head->lock);

 list_del_init(&req->list);
}
