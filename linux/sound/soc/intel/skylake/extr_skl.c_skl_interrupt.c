
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_bus {int reg_lock; int dev; } ;
typedef int irqreturn_t ;


 int INTSTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int RIRBSTS ;
 int RIRB_INT_MASK ;
 int RIRB_INT_RESPONSE ;
 int pm_runtime_active (int ) ;
 int snd_hdac_bus_update_rirb (struct hdac_bus*) ;
 int snd_hdac_chip_readb (struct hdac_bus*,int ) ;
 int snd_hdac_chip_readl (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writeb (struct hdac_bus*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t skl_interrupt(int irq, void *dev_id)
{
 struct hdac_bus *bus = dev_id;
 u32 status;

 if (!pm_runtime_active(bus->dev))
  return IRQ_NONE;

 spin_lock(&bus->reg_lock);

 status = snd_hdac_chip_readl(bus, INTSTS);
 if (status == 0 || status == 0xffffffff) {
  spin_unlock(&bus->reg_lock);
  return IRQ_NONE;
 }


 status = snd_hdac_chip_readb(bus, RIRBSTS);
 if (status & RIRB_INT_MASK) {
  if (status & RIRB_INT_RESPONSE)
   snd_hdac_bus_update_rirb(bus);
  snd_hdac_chip_writeb(bus, RIRBSTS, RIRB_INT_MASK);
 }

 spin_unlock(&bus->reg_lock);

 return snd_hdac_chip_readl(bus, INTSTS) ? IRQ_WAKE_THREAD : IRQ_HANDLED;
}
