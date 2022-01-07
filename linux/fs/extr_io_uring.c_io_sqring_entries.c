
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; } ;
struct io_rings {TYPE_1__ sq; } ;
struct io_ring_ctx {unsigned int cached_sq_head; struct io_rings* rings; } ;


 unsigned int smp_load_acquire (int *) ;

__attribute__((used)) static inline unsigned int io_sqring_entries(struct io_ring_ctx *ctx)
{
 struct io_rings *rings = ctx->rings;


 return smp_load_acquire(&rings->sq.tail) - ctx->cached_sq_head;
}
