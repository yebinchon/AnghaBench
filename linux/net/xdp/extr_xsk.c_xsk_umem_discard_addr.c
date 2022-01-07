
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int fq; } ;


 int xskq_discard_addr (int ) ;

void xsk_umem_discard_addr(struct xdp_umem *umem)
{
 xskq_discard_addr(umem->fq);
}
