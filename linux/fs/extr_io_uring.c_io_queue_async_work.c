
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct io_ring_ctx {int * sqo_wq; } ;
struct TYPE_6__ {int ki_flags; } ;
struct TYPE_5__ {TYPE_1__* sqe; } ;
struct io_kiocb {int work; TYPE_3__ rw; TYPE_2__ submit; } ;
struct TYPE_4__ {int opcode; } ;


 int IOCB_DIRECT ;


 int queue_work (int ,int *) ;

__attribute__((used)) static inline void io_queue_async_work(struct io_ring_ctx *ctx,
           struct io_kiocb *req)
{
 int rw = 0;

 if (req->submit.sqe) {
  switch (req->submit.sqe->opcode) {
  case 129:
  case 128:
   rw = !(req->rw.ki_flags & IOCB_DIRECT);
   break;
  }
 }

 queue_work(ctx->sqo_wq[rw], &req->work);
}
