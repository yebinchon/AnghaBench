
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;
struct ptr_ring {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (struct xdp_frame*) ;
 struct xdp_frame* ptr_ring_consume (struct ptr_ring*) ;
 int xdp_return_frame (struct xdp_frame*) ;

__attribute__((used)) static void __cpu_map_ring_cleanup(struct ptr_ring *ring)
{





 struct xdp_frame *xdpf;

 while ((xdpf = ptr_ring_consume(ring)))
  if (WARN_ON_ONCE(xdpf))
   xdp_return_frame(xdpf);
}
