
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sqe_submit {unsigned int index; unsigned int sequence; int * sqe; } ;
struct TYPE_2__ {int tail; } ;
struct io_rings {int sq_dropped; TYPE_1__ sq; } ;
struct io_ring_ctx {unsigned int cached_sq_head; unsigned int sq_mask; unsigned int sq_entries; int cached_sq_dropped; int * sq_sqes; int * sq_array; struct io_rings* rings; } ;


 unsigned int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int ) ;
 unsigned int smp_load_acquire (int *) ;

__attribute__((used)) static bool io_get_sqring(struct io_ring_ctx *ctx, struct sqe_submit *s)
{
 struct io_rings *rings = ctx->rings;
 u32 *sq_array = ctx->sq_array;
 unsigned head;
 head = ctx->cached_sq_head;

 if (head == smp_load_acquire(&rings->sq.tail))
  return 0;

 head = READ_ONCE(sq_array[head & ctx->sq_mask]);
 if (head < ctx->sq_entries) {
  s->index = head;
  s->sqe = &ctx->sq_sqes[head];
  s->sequence = ctx->cached_sq_head;
  ctx->cached_sq_head++;
  return 1;
 }


 ctx->cached_sq_head++;
 ctx->cached_sq_dropped++;
 WRITE_ONCE(rings->sq_dropped, ctx->cached_sq_dropped);
 return 0;
}
