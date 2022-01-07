
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 scalar_t__ SWIOTLB_FORCE ;
 int max_segment ;
 int rounddown (unsigned int,int ) ;
 scalar_t__ swiotlb_force ;

void swiotlb_set_max_segment(unsigned int val)
{
 if (swiotlb_force == SWIOTLB_FORCE)
  max_segment = 1;
 else
  max_segment = rounddown(val, PAGE_SIZE);
}
