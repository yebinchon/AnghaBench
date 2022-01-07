
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_cons {size_t cached_cons; } ;
typedef size_t __u32 ;


 int libbpf_smp_rmb () ;
 size_t xsk_cons_nb_avail (struct xsk_ring_cons*,size_t) ;

__attribute__((used)) static inline size_t xsk_ring_cons__peek(struct xsk_ring_cons *cons,
      size_t nb, __u32 *idx)
{
 size_t entries = xsk_cons_nb_avail(cons, nb);

 if (entries > 0) {



  libbpf_smp_rmb();

  *idx = cons->cached_cons;
  cons->cached_cons += entries;
 }

 return entries;
}
