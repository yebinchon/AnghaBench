
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt_last_comp_version (void*) ;

__attribute__((used)) static inline uint32_t sw_flags(void *fdt)
{

 return fdt_last_comp_version(fdt);
}
