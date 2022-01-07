
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 unsigned long PHYS_PFN (int ) ;
 int PageHighMem (int ) ;
 void* __va (int ) ;
 scalar_t__ arch_memremap_can_ram_remap (int ,size_t,unsigned long) ;
 int pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;

__attribute__((used)) static void *try_ram_remap(resource_size_t offset, size_t size,
      unsigned long flags)
{
 unsigned long pfn = PHYS_PFN(offset);


 if (pfn_valid(pfn) && !PageHighMem(pfn_to_page(pfn)) &&
     arch_memremap_can_ram_remap(offset, size, flags))
  return __va(offset);

 return ((void*)0);
}
