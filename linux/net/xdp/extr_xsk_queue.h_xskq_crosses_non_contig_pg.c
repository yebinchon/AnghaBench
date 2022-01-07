
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xdp_umem {TYPE_1__* pages; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned long XSK_NEXT_PG_CONTIG_MASK ;

__attribute__((used)) static inline bool xskq_crosses_non_contig_pg(struct xdp_umem *umem, u64 addr,
           u64 length)
{
 bool cross_pg = (addr & (PAGE_SIZE - 1)) + length > PAGE_SIZE;
 bool next_pg_contig =
  (unsigned long)umem->pages[(addr >> PAGE_SHIFT)].addr &
   XSK_NEXT_PG_CONTIG_MASK;

 return cross_pg && !next_pg_contig;
}
