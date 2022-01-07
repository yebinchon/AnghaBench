
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct io_kiocb {int user_data; TYPE_2__* ctx; int list; TYPE_1__ timeout; } ;
struct TYPE_4__ {int cq_timeouts; } ;


 int __io_free_req (struct io_kiocb*) ;
 int atomic_inc (int *) ;
 int hrtimer_try_to_cancel (int *) ;
 int io_cqring_fill_event (TYPE_2__*,int ,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void io_kill_timeout(struct io_kiocb *req)
{
 int ret;

 ret = hrtimer_try_to_cancel(&req->timeout.timer);
 if (ret != -1) {
  atomic_inc(&req->ctx->cq_timeouts);
  list_del(&req->list);
  io_cqring_fill_event(req->ctx, req->user_data, 0);
  __io_free_req(req);
 }
}
