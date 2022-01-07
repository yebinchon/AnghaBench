
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dev; } ;


 int AZX_GCTL_RESET ;
 int AZX_VS_EM2_DUM ;
 int GCTL ;
 int VS_EM2 ;
 int skl_enable_miscbdcge (int ,int) ;
 int snd_hdac_bus_exit_link_reset (struct hdac_bus*) ;
 int snd_hdac_chip_readb (struct hdac_bus*,int ) ;
 int snd_hdac_chip_updatel (struct hdac_bus*,int ,int ,int ) ;

__attribute__((used)) static void skl_dum_set(struct hdac_bus *bus)
{

 if (!(snd_hdac_chip_readb(bus, GCTL) & AZX_GCTL_RESET)) {
  skl_enable_miscbdcge(bus->dev, 0);
  snd_hdac_bus_exit_link_reset(bus);
  skl_enable_miscbdcge(bus->dev, 1);
 }

 snd_hdac_chip_updatel(bus, VS_EM2, AZX_VS_EM2_DUM, AZX_VS_EM2_DUM);
}
