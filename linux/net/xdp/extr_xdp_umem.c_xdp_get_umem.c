
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int users; } ;


 int refcount_inc (int *) ;

void xdp_get_umem(struct xdp_umem *umem)
{
 refcount_inc(&umem->users);
}
