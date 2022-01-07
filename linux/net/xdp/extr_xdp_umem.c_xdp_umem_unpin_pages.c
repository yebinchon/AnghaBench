
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int * pgs; int npgs; } ;


 int kfree (int *) ;
 int put_user_pages_dirty_lock (int *,int ,int) ;

__attribute__((used)) static void xdp_umem_unpin_pages(struct xdp_umem *umem)
{
 put_user_pages_dirty_lock(umem->pgs, umem->npgs, 1);

 kfree(umem->pgs);
 umem->pgs = ((void*)0);
}
