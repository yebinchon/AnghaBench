
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int reqs; } ;
struct aio_kiocb {int * ki_eventfd; int ki_refcnt; int ki_list; struct kioctx* ki_ctx; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int get_reqs_available (struct kioctx*) ;
 int kiocb_cachep ;
 struct aio_kiocb* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct aio_kiocb*) ;
 int percpu_ref_get (int *) ;
 int refcount_set (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct aio_kiocb *aio_get_req(struct kioctx *ctx)
{
 struct aio_kiocb *req;

 req = kmem_cache_alloc(kiocb_cachep, GFP_KERNEL);
 if (unlikely(!req))
  return ((void*)0);

 if (unlikely(!get_reqs_available(ctx))) {
  kmem_cache_free(kiocb_cachep, req);
  return ((void*)0);
 }

 percpu_ref_get(&ctx->reqs);
 req->ki_ctx = ctx;
 INIT_LIST_HEAD(&req->ki_list);
 refcount_set(&req->ki_refcnt, 2);
 req->ki_eventfd = ((void*)0);
 return req;
}
