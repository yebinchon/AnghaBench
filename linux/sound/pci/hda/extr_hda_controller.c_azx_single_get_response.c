
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* res; } ;
struct hdac_bus {TYPE_1__ rirb; } ;



__attribute__((used)) static int azx_single_get_response(struct hdac_bus *bus, unsigned int addr,
       unsigned int *res)
{
 if (res)
  *res = bus->rirb.res[addr];
 return 0;
}
