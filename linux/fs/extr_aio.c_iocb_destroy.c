
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aio_kiocb {TYPE_1__* ki_ctx; scalar_t__ ki_filp; scalar_t__ ki_eventfd; } ;
struct TYPE_2__ {int reqs; } ;


 int eventfd_ctx_put (scalar_t__) ;
 int fput (scalar_t__) ;
 int kiocb_cachep ;
 int kmem_cache_free (int ,struct aio_kiocb*) ;
 int percpu_ref_put (int *) ;

__attribute__((used)) static inline void iocb_destroy(struct aio_kiocb *iocb)
{
 if (iocb->ki_eventfd)
  eventfd_ctx_put(iocb->ki_eventfd);
 if (iocb->ki_filp)
  fput(iocb->ki_filp);
 percpu_ref_put(&iocb->ki_ctx->reqs);
 kmem_cache_free(kiocb_cachep, iocb);
}
