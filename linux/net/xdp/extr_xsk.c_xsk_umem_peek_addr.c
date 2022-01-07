
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xdp_umem {int fq; } ;


 int * xskq_peek_addr (int ,int *,struct xdp_umem*) ;

u64 *xsk_umem_peek_addr(struct xdp_umem *umem, u64 *addr)
{
 return xskq_peek_addr(umem->fq, addr, umem);
}
