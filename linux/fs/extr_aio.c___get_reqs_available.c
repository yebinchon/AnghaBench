
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx_cpu {scalar_t__ reqs_available; } ;
struct kioctx {int req_batch; int reqs_available; int cpu; } ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct kioctx_cpu* this_cpu_ptr (int ) ;

__attribute__((used)) static bool __get_reqs_available(struct kioctx *ctx)
{
 struct kioctx_cpu *kcpu;
 bool ret = 0;
 unsigned long flags;

 local_irq_save(flags);
 kcpu = this_cpu_ptr(ctx->cpu);
 if (!kcpu->reqs_available) {
  int old, avail = atomic_read(&ctx->reqs_available);

  do {
   if (avail < ctx->req_batch)
    goto out;

   old = avail;
   avail = atomic_cmpxchg(&ctx->reqs_available,
            avail, avail - ctx->req_batch);
  } while (avail != old);

  kcpu->reqs_available += ctx->req_batch;
 }

 ret = 1;
 kcpu->reqs_available--;
out:
 local_irq_restore(flags);
 return ret;
}
