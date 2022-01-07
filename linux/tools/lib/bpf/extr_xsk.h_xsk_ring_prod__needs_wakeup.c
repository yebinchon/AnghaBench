
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_prod {int* flags; } ;


 int XDP_RING_NEED_WAKEUP ;

__attribute__((used)) static inline int xsk_ring_prod__needs_wakeup(const struct xsk_ring_prod *r)
{
 return *r->flags & XDP_RING_NEED_WAKEUP;
}
