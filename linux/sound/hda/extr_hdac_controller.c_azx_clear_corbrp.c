
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dev; } ;


 int AZX_CORBRP_RST ;
 int CORBRP ;
 int dev_err (int ,char*,int) ;
 int snd_hdac_chip_readw (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writew (struct hdac_bus*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void azx_clear_corbrp(struct hdac_bus *bus)
{
 int timeout;

 for (timeout = 1000; timeout > 0; timeout--) {
  if (snd_hdac_chip_readw(bus, CORBRP) & AZX_CORBRP_RST)
   break;
  udelay(1);
 }
 if (timeout <= 0)
  dev_err(bus->dev, "CORB reset timeout#1, CORBRP = %d\n",
   snd_hdac_chip_readw(bus, CORBRP));

 snd_hdac_chip_writew(bus, CORBRP, 0);
 for (timeout = 1000; timeout > 0; timeout--) {
  if (snd_hdac_chip_readw(bus, CORBRP) == 0)
   break;
  udelay(1);
 }
 if (timeout <= 0)
  dev_err(bus->dev, "CORB reset timeout#2, CORBRP = %d\n",
   snd_hdac_chip_readw(bus, CORBRP));
}
