
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct hdac_bus {int dev; } ;
struct device {int dummy; } ;


 int AZX_REG_VS_D0I3C_CIP ;
 int AZX_REG_VS_D0I3C_I3 ;
 int VS_D0I3C ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 struct hdac_bus* pci_get_drvdata (struct pci_dev*) ;
 int snd_hdac_chip_readb (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writeb (struct hdac_bus*,int ,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int udelay (int) ;

void skl_update_d0i3c(struct device *dev, bool enable)
{
 struct pci_dev *pci = to_pci_dev(dev);
 struct hdac_bus *bus = pci_get_drvdata(pci);
 u8 reg;
 int timeout = 50;

 reg = snd_hdac_chip_readb(bus, VS_D0I3C);

 while ((reg & AZX_REG_VS_D0I3C_CIP) && --timeout) {
  udelay(10);
  reg = snd_hdac_chip_readb(bus, VS_D0I3C);
 }


 if (!timeout) {
  dev_err(bus->dev, "Before D0I3C update: D0I3C CIP timeout\n");
  return;
 }

 if (enable)
  reg = reg | AZX_REG_VS_D0I3C_I3;
 else
  reg = reg & (~AZX_REG_VS_D0I3C_I3);

 snd_hdac_chip_writeb(bus, VS_D0I3C, reg);

 timeout = 50;

 reg = snd_hdac_chip_readb(bus, VS_D0I3C);
 while ((reg & AZX_REG_VS_D0I3C_CIP) && --timeout) {
  udelay(10);
  reg = snd_hdac_chip_readb(bus, VS_D0I3C);
 }


 if (!timeout) {
  dev_err(bus->dev, "After D0I3C update: D0I3C CIP timeout\n");
  return;
 }

 dev_dbg(bus->dev, "D0I3C register = 0x%x\n",
   snd_hdac_chip_readb(bus, VS_D0I3C));
}
