
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int dax_entry_size (void*) ;
 unsigned long dax_to_pfn (void*) ;

__attribute__((used)) static unsigned long dax_end_pfn(void *entry)
{
 return dax_to_pfn(entry) + dax_entry_size(entry) / PAGE_SIZE;
}
