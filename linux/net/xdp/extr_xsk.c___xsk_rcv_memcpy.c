
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct xdp_umem {TYPE_1__* pages; } ;
struct TYPE_2__ {void* addr; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int memcpy (void*,void*,int) ;
 void* xdp_umem_get_data (struct xdp_umem*,int) ;
 int xsk_umem_add_offset_to_addr (int) ;
 scalar_t__ xskq_crosses_non_contig_pg (struct xdp_umem*,int,int) ;

__attribute__((used)) static void __xsk_rcv_memcpy(struct xdp_umem *umem, u64 addr, void *from_buf,
        u32 len, u32 metalen)
{
 void *to_buf = xdp_umem_get_data(umem, addr);

 addr = xsk_umem_add_offset_to_addr(addr);
 if (xskq_crosses_non_contig_pg(umem, addr, len + metalen)) {
  void *next_pg_addr = umem->pages[(addr >> PAGE_SHIFT) + 1].addr;
  u64 page_start = addr & ~(PAGE_SIZE - 1);
  u64 first_len = PAGE_SIZE - (addr - page_start);

  memcpy(to_buf, from_buf, first_len + metalen);
  memcpy(next_pg_addr, from_buf + first_len, len - first_len);

  return;
 }

 memcpy(to_buf, from_buf, len + metalen);
}
