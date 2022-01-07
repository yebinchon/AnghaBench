
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int work; int users; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int schedule_work (int *) ;
 int xdp_umem_release_deferred ;

void xdp_put_umem(struct xdp_umem *umem)
{
 if (!umem)
  return;

 if (refcount_dec_and_test(&umem->users)) {
  INIT_WORK(&umem->work, xdp_umem_release_deferred);
  schedule_work(&umem->work);
 }
}
