
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int XT_MAX_TABLE_SIZE ;
 int __GFP_ZERO ;
 unsigned int* kvmalloc_array (unsigned int,int,int) ;

unsigned int *xt_alloc_entry_offsets(unsigned int size)
{
 if (size > XT_MAX_TABLE_SIZE / sizeof(unsigned int))
  return ((void*)0);

 return kvmalloc_array(size, sizeof(unsigned int), GFP_KERNEL | __GFP_ZERO);

}
