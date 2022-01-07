
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt_find_max_phandle (void const*,int *) ;

__attribute__((used)) static inline uint32_t fdt_get_max_phandle(const void *fdt)
{
 uint32_t phandle;
 int err;

 err = fdt_find_max_phandle(fdt, &phandle);
 if (err < 0)
  return (uint32_t)-1;

 return phandle;
}
