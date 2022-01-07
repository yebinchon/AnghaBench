
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_umem {int fq; } ;


 int xskq_has_addrs (int ,int ) ;

bool xsk_umem_has_addrs(struct xdp_umem *umem, u32 cnt)
{
 return xskq_has_addrs(umem->fq, cnt);
}
