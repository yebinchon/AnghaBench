
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct consistent_dma_area {int dma_handle; } ;



__attribute__((used)) static inline u16 hpios_locked_mem_get_phys_addr(struct consistent_dma_area
 *locked_mem_handle, u32 *p_physical_addr)
{
 *p_physical_addr = locked_mem_handle->dma_handle;
 return 0;
}
