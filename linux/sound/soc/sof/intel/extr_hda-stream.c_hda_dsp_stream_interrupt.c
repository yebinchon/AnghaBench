
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_bus {int reg_lock; int dev; } ;
typedef int irqreturn_t ;


 int INTSTS ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dev_vdbg (int ,char*,int) ;
 int snd_hdac_chip_readl (struct hdac_bus*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

irqreturn_t hda_dsp_stream_interrupt(int irq, void *context)
{
 struct hdac_bus *bus = context;
 int ret = IRQ_WAKE_THREAD;
 u32 status;

 spin_lock(&bus->reg_lock);

 status = snd_hdac_chip_readl(bus, INTSTS);
 dev_vdbg(bus->dev, "stream irq, INTSTS status: 0x%x\n", status);


 if (status == 0xffffffff)
  ret = IRQ_NONE;

 spin_unlock(&bus->reg_lock);

 return ret;
}
