
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dummy; } ;
struct azx {scalar_t__ single_cmd; scalar_t__ disabled; } ;


 int azx_rirb_get_response (struct hdac_bus*,unsigned int,unsigned int*) ;
 int azx_single_get_response (struct hdac_bus*,unsigned int,unsigned int*) ;
 struct azx* bus_to_azx (struct hdac_bus*) ;

__attribute__((used)) static int azx_get_response(struct hdac_bus *bus, unsigned int addr,
       unsigned int *res)
{
 struct azx *chip = bus_to_azx(bus);

 if (chip->disabled)
  return 0;
 if (chip->single_cmd)
  return azx_single_get_response(bus, addr, res);
 else
  return azx_rirb_get_response(bus, addr, res);
}
