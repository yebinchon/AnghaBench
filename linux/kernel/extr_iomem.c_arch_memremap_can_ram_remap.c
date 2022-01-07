
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;



__attribute__((used)) static bool arch_memremap_can_ram_remap(resource_size_t offset, size_t size,
     unsigned long flags)
{
 return 1;
}
