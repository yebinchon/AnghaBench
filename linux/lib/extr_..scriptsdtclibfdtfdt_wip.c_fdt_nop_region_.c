
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdt32_t ;


 int FDT_NOP ;
 int cpu_to_fdt32 (int ) ;

__attribute__((used)) static void fdt_nop_region_(void *start, int len)
{
 fdt32_t *p;

 for (p = start; (char *)p < ((char *)start + len); p++)
  *p = cpu_to_fdt32(FDT_NOP);
}
