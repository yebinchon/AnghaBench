
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_params {int flags; int sq_thread_cpu; int sq_thread_idle; } ;
struct io_ring_ctx {int flags; int * sqo_mm; void** sqo_wq; scalar_t__ sq_entries; int * sqo_thread; scalar_t__ sq_thread_idle; int sqo_wait; } ;
struct TYPE_2__ {int * mm; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ HZ ;
 int IORING_SETUP_SQPOLL ;
 int IORING_SETUP_SQ_AFF ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int WQ_FREEZABLE ;
 int WQ_UNBOUND ;
 void* alloc_workqueue (char*,int,int) ;
 int capable (int ) ;
 int cpu_online (int) ;
 TYPE_1__* current ;
 int init_waitqueue_head (int *) ;
 int io_finish_async (struct io_ring_ctx*) ;
 int io_sq_thread ;
 int * kthread_create (int ,struct io_ring_ctx*,char*) ;
 int * kthread_create_on_cpu (int ,struct io_ring_ctx*,int,char*) ;
 int min (scalar_t__,int) ;
 int mmdrop (int *) ;
 int mmgrab (int *) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int nr_cpu_ids ;
 int num_online_cpus () ;
 int wake_up_process (int *) ;

__attribute__((used)) static int io_sq_offload_start(struct io_ring_ctx *ctx,
          struct io_uring_params *p)
{
 int ret;

 init_waitqueue_head(&ctx->sqo_wait);
 mmgrab(current->mm);
 ctx->sqo_mm = current->mm;

 if (ctx->flags & IORING_SETUP_SQPOLL) {
  ret = -EPERM;
  if (!capable(CAP_SYS_ADMIN))
   goto err;

  ctx->sq_thread_idle = msecs_to_jiffies(p->sq_thread_idle);
  if (!ctx->sq_thread_idle)
   ctx->sq_thread_idle = HZ;

  if (p->flags & IORING_SETUP_SQ_AFF) {
   int cpu = p->sq_thread_cpu;

   ret = -EINVAL;
   if (cpu >= nr_cpu_ids)
    goto err;
   if (!cpu_online(cpu))
    goto err;

   ctx->sqo_thread = kthread_create_on_cpu(io_sq_thread,
       ctx, cpu,
       "io_uring-sq");
  } else {
   ctx->sqo_thread = kthread_create(io_sq_thread, ctx,
       "io_uring-sq");
  }
  if (IS_ERR(ctx->sqo_thread)) {
   ret = PTR_ERR(ctx->sqo_thread);
   ctx->sqo_thread = ((void*)0);
   goto err;
  }
  wake_up_process(ctx->sqo_thread);
 } else if (p->flags & IORING_SETUP_SQ_AFF) {

  ret = -EINVAL;
  goto err;
 }


 ctx->sqo_wq[0] = alloc_workqueue("io_ring-wq",
   WQ_UNBOUND | WQ_FREEZABLE,
   min(ctx->sq_entries - 1, 2 * num_online_cpus()));
 if (!ctx->sqo_wq[0]) {
  ret = -ENOMEM;
  goto err;
 }
 ctx->sqo_wq[1] = alloc_workqueue("io_ring-write-wq",
      WQ_UNBOUND | WQ_FREEZABLE, 2);
 if (!ctx->sqo_wq[1]) {
  ret = -ENOMEM;
  goto err;
 }

 return 0;
err:
 io_finish_async(ctx);
 mmdrop(ctx->sqo_mm);
 ctx->sqo_mm = ((void*)0);
 return ret;
}
