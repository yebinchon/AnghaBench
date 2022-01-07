
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int refs; } ;


 int kmem_cache_free_bulk (int ,int,void**) ;
 int percpu_ref_put_many (int *,int) ;
 int req_cachep ;

__attribute__((used)) static void io_free_req_many(struct io_ring_ctx *ctx, void **reqs, int *nr)
{
 if (*nr) {
  kmem_cache_free_bulk(req_cachep, *nr, reqs);
  percpu_ref_put_many(&ctx->refs, *nr);
  *nr = 0;
 }
}
