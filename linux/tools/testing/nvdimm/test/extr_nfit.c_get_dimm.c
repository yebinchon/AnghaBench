
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfit_mem {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_handle; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int ENXIO ;
 TYPE_1__* __to_nfit_memdev (struct nfit_mem*) ;
 scalar_t__* handle ;

__attribute__((used)) static int get_dimm(struct nfit_mem *nfit_mem, unsigned int func)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(handle); i++)
  if (__to_nfit_memdev(nfit_mem)->device_handle == handle[i])
   break;
 if (i >= ARRAY_SIZE(handle))
  return -ENXIO;
 return i;
}
