
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_params {int flags; } ;
struct io_ring_ctx {int timeout_list; int defer_list; int cancel_list; int poll_list; int completion_lock; TYPE_1__* pending_async; int wait; int uring_lock; int sqo_thread_started; int ctx_done; int cq_wait; int flags; int refs; } ;
struct TYPE_2__ {int cnt; int list; int lock; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PERCPU_REF_ALLOW_REINIT ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int io_ring_ctx_ref_free ;
 int kfree (struct io_ring_ctx*) ;
 struct io_ring_ctx* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ percpu_ref_init (int *,int ,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct io_ring_ctx *io_ring_ctx_alloc(struct io_uring_params *p)
{
 struct io_ring_ctx *ctx;
 int i;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 if (percpu_ref_init(&ctx->refs, io_ring_ctx_ref_free,
       PERCPU_REF_ALLOW_REINIT, GFP_KERNEL)) {
  kfree(ctx);
  return ((void*)0);
 }

 ctx->flags = p->flags;
 init_waitqueue_head(&ctx->cq_wait);
 init_completion(&ctx->ctx_done);
 init_completion(&ctx->sqo_thread_started);
 mutex_init(&ctx->uring_lock);
 init_waitqueue_head(&ctx->wait);
 for (i = 0; i < ARRAY_SIZE(ctx->pending_async); i++) {
  spin_lock_init(&ctx->pending_async[i].lock);
  INIT_LIST_HEAD(&ctx->pending_async[i].list);
  atomic_set(&ctx->pending_async[i].cnt, 0);
 }
 spin_lock_init(&ctx->completion_lock);
 INIT_LIST_HEAD(&ctx->poll_list);
 INIT_LIST_HEAD(&ctx->cancel_list);
 INIT_LIST_HEAD(&ctx->defer_list);
 INIT_LIST_HEAD(&ctx->timeout_list);
 return ctx;
}
