
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_kiocb {int flags; TYPE_1__* ctx; scalar_t__ file; } ;
struct TYPE_2__ {int refs; } ;


 int REQ_F_FIXED_FILE ;
 int fput (scalar_t__) ;
 int kmem_cache_free (int ,struct io_kiocb*) ;
 int percpu_ref_put (int *) ;
 int req_cachep ;

__attribute__((used)) static void __io_free_req(struct io_kiocb *req)
{
 if (req->file && !(req->flags & REQ_F_FIXED_FILE))
  fput(req->file);
 percpu_ref_put(&req->ctx->refs);
 kmem_cache_free(req_cachep, req);
}
