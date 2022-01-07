
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdt32_t ;


 int FDT_ERR_BADNCELLS ;
 int FDT_MAX_NCELLS ;
 int fdt32_to_cpu (int const) ;
 int * fdt_getprop (void const*,int,char const*,int*) ;

__attribute__((used)) static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
{
 const fdt32_t *c;
 int val;
 int len;

 c = fdt_getprop(fdt, nodeoffset, name, &len);
 if (!c)
  return len;

 if (len != sizeof(*c))
  return -FDT_ERR_BADNCELLS;

 val = fdt32_to_cpu(*c);
 if ((val <= 0) || (val > FDT_MAX_NCELLS))
  return -FDT_ERR_BADNCELLS;

 return val;
}
