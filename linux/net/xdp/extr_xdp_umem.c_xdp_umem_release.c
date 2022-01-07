
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {struct xdp_umem* pages; int * cq; int * fq; int id; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct xdp_umem*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int umem_ida ;
 int xdp_umem_clear_dev (struct xdp_umem*) ;
 int xdp_umem_unaccount_pages (struct xdp_umem*) ;
 int xdp_umem_unmap_pages (struct xdp_umem*) ;
 int xdp_umem_unpin_pages (struct xdp_umem*) ;
 int xsk_reuseq_destroy (struct xdp_umem*) ;
 int xskq_destroy (int *) ;

__attribute__((used)) static void xdp_umem_release(struct xdp_umem *umem)
{
 rtnl_lock();
 xdp_umem_clear_dev(umem);
 rtnl_unlock();

 ida_simple_remove(&umem_ida, umem->id);

 if (umem->fq) {
  xskq_destroy(umem->fq);
  umem->fq = ((void*)0);
 }

 if (umem->cq) {
  xskq_destroy(umem->cq);
  umem->cq = ((void*)0);
 }

 xsk_reuseq_destroy(umem);

 xdp_umem_unmap_pages(umem);
 xdp_umem_unpin_pages(umem);

 kfree(umem->pages);
 umem->pages = ((void*)0);

 xdp_umem_unaccount_pages(umem);
 kfree(umem);
}
