
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_9pfs_dataring {TYPE_1__* intf; } ;
struct TYPE_2__ {scalar_t__ out_cons; scalar_t__ out_prod; } ;
typedef scalar_t__ RING_IDX ;


 scalar_t__ XEN_9PFS_RING_SIZE ;
 int virt_mb () ;
 scalar_t__ xen_9pfs_queued (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool p9_xen_write_todo(struct xen_9pfs_dataring *ring, RING_IDX size)
{
 RING_IDX cons, prod;

 cons = ring->intf->out_cons;
 prod = ring->intf->out_prod;
 virt_mb();

 return XEN_9PFS_RING_SIZE -
  xen_9pfs_queued(prod, cons, XEN_9PFS_RING_SIZE) >= size;
}
