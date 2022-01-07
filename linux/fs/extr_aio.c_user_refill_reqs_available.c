
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int completion_lock; int tail; int * ring_pages; scalar_t__ completed_events; } ;
struct aio_ring {unsigned int head; } ;


 struct aio_ring* kmap_atomic (int ) ;
 int kunmap_atomic (struct aio_ring*) ;
 int refill_reqs_available (struct kioctx*,unsigned int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void user_refill_reqs_available(struct kioctx *ctx)
{
 spin_lock_irq(&ctx->completion_lock);
 if (ctx->completed_events) {
  struct aio_ring *ring;
  unsigned head;
  ring = kmap_atomic(ctx->ring_pages[0]);
  head = ring->head;
  kunmap_atomic(ring);

  refill_reqs_available(ctx, head, ctx->tail);
 }

 spin_unlock_irq(&ctx->completion_lock);
}
