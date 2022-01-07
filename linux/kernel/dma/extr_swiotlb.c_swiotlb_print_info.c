
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IO_TLB_SHIFT ;
 scalar_t__ io_tlb_end ;
 unsigned long io_tlb_nslabs ;
 scalar_t__ io_tlb_start ;
 scalar_t__ no_iotlb_memory ;
 int pr_info (char*,unsigned long long,unsigned long long,unsigned long) ;
 int pr_warn (char*) ;

void swiotlb_print_info(void)
{
 unsigned long bytes = io_tlb_nslabs << IO_TLB_SHIFT;

 if (no_iotlb_memory) {
  pr_warn("No low mem\n");
  return;
 }

 pr_info("mapped [mem %#010llx-%#010llx] (%luMB)\n",
        (unsigned long long)io_tlb_start,
        (unsigned long long)io_tlb_end,
        bytes >> 20);
}
