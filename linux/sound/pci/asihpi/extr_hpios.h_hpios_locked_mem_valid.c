
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct consistent_dma_area {scalar_t__ size; } ;



__attribute__((used)) static inline u16 hpios_locked_mem_valid(struct consistent_dma_area
 *locked_mem_handle)
{
 return locked_mem_handle->size != 0;
}
