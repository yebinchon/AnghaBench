
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_bus {int spbcap; int dev; } ;


 int AZX_REG_SPB_SPBFCCTL ;
 int dev_err (int ,char*) ;
 int snd_hdac_updatel (int ,int ,int,int) ;

void snd_hdac_ext_stream_spbcap_enable(struct hdac_bus *bus,
     bool enable, int index)
{
 u32 mask = 0;

 if (!bus->spbcap) {
  dev_err(bus->dev, "Address of SPB capability is NULL\n");
  return;
 }

 mask |= (1 << index);

 if (enable)
  snd_hdac_updatel(bus->spbcap, AZX_REG_SPB_SPBFCCTL, mask, mask);
 else
  snd_hdac_updatel(bus->spbcap, AZX_REG_SPB_SPBFCCTL, mask, 0);
}
