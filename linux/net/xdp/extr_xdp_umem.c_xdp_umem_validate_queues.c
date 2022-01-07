
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {scalar_t__ cq; scalar_t__ fq; } ;



bool xdp_umem_validate_queues(struct xdp_umem *umem)
{
 return umem->fq && umem->cq;
}
