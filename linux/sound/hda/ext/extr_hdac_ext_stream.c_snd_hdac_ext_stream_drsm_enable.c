
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_bus {int drsmcap; int dev; } ;


 int AZX_REG_DRSM_CTL ;
 int dev_err (int ,char*) ;
 int snd_hdac_updatel (int ,int ,int,int) ;

void snd_hdac_ext_stream_drsm_enable(struct hdac_bus *bus,
    bool enable, int index)
{
 u32 mask = 0;

 if (!bus->drsmcap) {
  dev_err(bus->dev, "Address of DRSM capability is NULL\n");
  return;
 }

 mask |= (1 << index);

 if (enable)
  snd_hdac_updatel(bus->drsmcap, AZX_REG_DRSM_CTL, mask, mask);
 else
  snd_hdac_updatel(bus->drsmcap, AZX_REG_DRSM_CTL, mask, 0);
}
