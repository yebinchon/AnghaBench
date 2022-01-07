
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_kiocb {int ki_refcnt; } ;


 int aio_complete (struct aio_kiocb*) ;
 int iocb_destroy (struct aio_kiocb*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void iocb_put(struct aio_kiocb *iocb)
{
 if (refcount_dec_and_test(&iocb->ki_refcnt)) {
  aio_complete(iocb);
  iocb_destroy(iocb);
 }
}
