
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fdt32_t ;


 int fdt32_ld (int const*) ;
 int * fdt_getprop (void const*,int,char*,int*) ;

uint32_t fdt_get_phandle(const void *fdt, int nodeoffset)
{
 const fdt32_t *php;
 int len;



 php = fdt_getprop(fdt, nodeoffset, "phandle", &len);
 if (!php || (len != sizeof(*php))) {
  php = fdt_getprop(fdt, nodeoffset, "linux,phandle", &len);
  if (!php || (len != sizeof(*php)))
   return 0;
 }

 return fdt32_ld(php);
}
