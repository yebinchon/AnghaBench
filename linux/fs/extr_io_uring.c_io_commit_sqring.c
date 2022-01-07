
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct io_rings {TYPE_1__ sq; } ;
struct io_ring_ctx {scalar_t__ cached_sq_head; struct io_rings* rings; } ;


 scalar_t__ READ_ONCE (int ) ;
 int smp_store_release (int *,scalar_t__) ;

__attribute__((used)) static void io_commit_sqring(struct io_ring_ctx *ctx)
{
 struct io_rings *rings = ctx->rings;

 if (ctx->cached_sq_head != READ_ONCE(rings->sq.head)) {





  smp_store_release(&rings->sq.head, ctx->cached_sq_head);
 }
}
