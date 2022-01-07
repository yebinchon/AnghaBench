
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_ring_ctx {int user; int cq_entries; int sq_entries; scalar_t__ account_mem; int refs; int sq_sqes; int rings; TYPE_1__* ring_sock; scalar_t__ sqo_mm; } ;
struct TYPE_2__ {int * file; } ;


 int free_uid (int ) ;
 int io_eventfd_unregister (struct io_ring_ctx*) ;
 int io_finish_async (struct io_ring_ctx*) ;
 int io_iopoll_reap_events (struct io_ring_ctx*) ;
 int io_mem_free (int ) ;
 int io_sqe_buffer_unregister (struct io_ring_ctx*) ;
 int io_sqe_files_unregister (struct io_ring_ctx*) ;
 int io_unaccount_mem (int ,int ) ;
 int kfree (struct io_ring_ctx*) ;
 int mmdrop (scalar_t__) ;
 int percpu_ref_exit (int *) ;
 int ring_pages (int ,int ) ;
 int sock_release (TYPE_1__*) ;

__attribute__((used)) static void io_ring_ctx_free(struct io_ring_ctx *ctx)
{
 io_finish_async(ctx);
 if (ctx->sqo_mm)
  mmdrop(ctx->sqo_mm);

 io_iopoll_reap_events(ctx);
 io_sqe_buffer_unregister(ctx);
 io_sqe_files_unregister(ctx);
 io_eventfd_unregister(ctx);
 io_mem_free(ctx->rings);
 io_mem_free(ctx->sq_sqes);

 percpu_ref_exit(&ctx->refs);
 if (ctx->account_mem)
  io_unaccount_mem(ctx->user,
    ring_pages(ctx->sq_entries, ctx->cq_entries));
 free_uid(ctx->user);
 kfree(ctx);
}
