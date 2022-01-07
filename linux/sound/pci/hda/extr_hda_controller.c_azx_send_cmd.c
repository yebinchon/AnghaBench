
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dummy; } ;
struct azx {scalar_t__ single_cmd; scalar_t__ disabled; } ;


 int azx_single_send_cmd (struct hdac_bus*,unsigned int) ;
 struct azx* bus_to_azx (struct hdac_bus*) ;
 int snd_hdac_bus_send_cmd (struct hdac_bus*,unsigned int) ;

__attribute__((used)) static int azx_send_cmd(struct hdac_bus *bus, unsigned int val)
{
 struct azx *chip = bus_to_azx(bus);

 if (chip->disabled)
  return 0;
 if (chip->single_cmd)
  return azx_single_send_cmd(bus, val);
 else
  return snd_hdac_bus_send_cmd(bus, val);
}
