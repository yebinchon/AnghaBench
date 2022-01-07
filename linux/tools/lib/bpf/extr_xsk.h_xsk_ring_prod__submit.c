
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_prod {size_t* producer; } ;


 int libbpf_smp_wmb () ;

__attribute__((used)) static inline void xsk_ring_prod__submit(struct xsk_ring_prod *prod, size_t nb)
{



 libbpf_smp_wmb();

 *prod->producer += nb;
}
