
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx_cpu {int reqs_available; } ;
struct kioctx {int req_batch; int reqs_available; int cpu; } ;


 int atomic_add (int,int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct kioctx_cpu* this_cpu_ptr (int ) ;

__attribute__((used)) static void put_reqs_available(struct kioctx *ctx, unsigned nr)
{
 struct kioctx_cpu *kcpu;
 unsigned long flags;

 local_irq_save(flags);
 kcpu = this_cpu_ptr(ctx->cpu);
 kcpu->reqs_available += nr;

 while (kcpu->reqs_available >= ctx->req_batch * 2) {
  kcpu->reqs_available -= ctx->req_batch;
  atomic_add(ctx->req_batch, &ctx->reqs_available);
 }

 local_irq_restore(flags);
}
