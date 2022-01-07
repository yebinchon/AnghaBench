
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int ppcap; int dev; } ;


 int AZX_PPCTL_PIE ;
 int AZX_REG_PP_PPCTL ;
 int dev_err (int ,char*) ;
 int snd_hdac_updatel (int ,int ,int ,int ) ;

void snd_hdac_ext_bus_ppcap_int_enable(struct hdac_bus *bus, bool enable)
{

 if (!bus->ppcap) {
  dev_err(bus->dev, "Address of PP capability is NULL\n");
  return;
 }

 if (enable)
  snd_hdac_updatel(bus->ppcap, AZX_REG_PP_PPCTL,
     AZX_PPCTL_PIE, AZX_PPCTL_PIE);
 else
  snd_hdac_updatel(bus->ppcap, AZX_REG_PP_PPCTL,
     AZX_PPCTL_PIE, 0);
}
