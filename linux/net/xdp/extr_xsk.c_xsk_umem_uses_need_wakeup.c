
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int flags; } ;


 int XDP_UMEM_USES_NEED_WAKEUP ;

bool xsk_umem_uses_need_wakeup(struct xdp_umem *umem)
{
 return umem->flags & XDP_UMEM_USES_NEED_WAKEUP;
}
