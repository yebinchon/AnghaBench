
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long io_tlb_nslabs ;
 int no_iotlb_memory ;
 scalar_t__ unlikely (int ) ;

unsigned long swiotlb_nr_tbl(void)
{
 return unlikely(no_iotlb_memory) ? 0 : io_tlb_nslabs;
}
