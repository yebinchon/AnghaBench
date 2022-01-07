
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct consistent_dma_area {void* vaddr; } ;



__attribute__((used)) static inline u16 hpios_locked_mem_get_virt_addr(struct consistent_dma_area
 *locked_mem_handle, void **pp_virtual_addr)
{
 *pp_virtual_addr = locked_mem_handle->vaddr;
 return 0;
}
