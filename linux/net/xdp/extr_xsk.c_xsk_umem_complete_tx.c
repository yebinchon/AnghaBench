
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_umem {int cq; } ;


 int xskq_produce_flush_addr_n (int ,int ) ;

void xsk_umem_complete_tx(struct xdp_umem *umem, u32 nb_entries)
{
 xskq_produce_flush_addr_n(umem->cq, nb_entries);
}
