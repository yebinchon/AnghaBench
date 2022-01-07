
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_cons {size_t* consumer; } ;


 int libbpf_smp_rwmb () ;

__attribute__((used)) static inline void xsk_ring_cons__release(struct xsk_ring_cons *cons, size_t nb)
{



 libbpf_smp_rwmb();

 *cons->consumer += nb;
}
