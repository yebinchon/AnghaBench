
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IO_TLB_DEFAULT_SIZE ;
 unsigned long IO_TLB_SHIFT ;
 unsigned long io_tlb_nslabs ;

unsigned long swiotlb_size_or_default(void)
{
 unsigned long size;

 size = io_tlb_nslabs << IO_TLB_SHIFT;

 return size ? size : (IO_TLB_DEFAULT_SIZE);
}
