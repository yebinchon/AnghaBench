
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 int IORESOURCE_SYSTEM_RAM ;
 int IORES_DESC_NONE ;
 unsigned long MEMREMAP_WB ;
 unsigned long MEMREMAP_WC ;
 unsigned long MEMREMAP_WT ;
 int REGION_INTERSECTS ;
 int REGION_MIXED ;
 int WARN_ONCE (int,char*,int *,unsigned long) ;
 void* arch_memremap_wb (int ,size_t) ;
 void* ioremap_wc (int ,size_t) ;
 void* ioremap_wt (int ,size_t) ;
 int region_intersects (int ,size_t,int ,int ) ;
 void* try_ram_remap (int ,size_t,unsigned long) ;

void *memremap(resource_size_t offset, size_t size, unsigned long flags)
{
 int is_ram = region_intersects(offset, size,
           IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
 void *addr = ((void*)0);

 if (!flags)
  return ((void*)0);

 if (is_ram == REGION_MIXED) {
  WARN_ONCE(1, "memremap attempted on mixed range %pa size: %#lx\n",
    &offset, (unsigned long) size);
  return ((void*)0);
 }


 if (flags & MEMREMAP_WB) {






  if (is_ram == REGION_INTERSECTS)
   addr = try_ram_remap(offset, size, flags);
  if (!addr)
   addr = arch_memremap_wb(offset, size);
 }







 if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
  WARN_ONCE(1, "memremap attempted on ram %pa size: %#lx\n",
    &offset, (unsigned long) size);
  return ((void*)0);
 }

 if (!addr && (flags & MEMREMAP_WT))
  addr = ioremap_wt(offset, size);

 if (!addr && (flags & MEMREMAP_WC))
  addr = ioremap_wc(offset, size);

 return addr;
}
