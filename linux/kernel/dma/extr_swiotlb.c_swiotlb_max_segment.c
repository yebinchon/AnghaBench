
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int max_segment ;
 int no_iotlb_memory ;
 scalar_t__ unlikely (int ) ;

unsigned int swiotlb_max_segment(void)
{
 return unlikely(no_iotlb_memory) ? 0 : max_segment;
}
