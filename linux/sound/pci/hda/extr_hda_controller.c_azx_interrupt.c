
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hdac_bus {int reg_lock; } ;
struct azx {int driver_caps; scalar_t__ disabled; TYPE_1__* card; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int AZX_DCAPS_CTX_WORKAROUND ;
 int INTSTS ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int RIRBSTS ;
 int RIRB_INT_MASK ;
 int RIRB_INT_RESPONSE ;
 struct hdac_bus* azx_bus (struct azx*) ;
 scalar_t__ azx_has_pm_runtime (struct azx*) ;
 int azx_readb (struct azx*,int ) ;
 int azx_readl (struct azx*,int ) ;
 int azx_writeb (struct azx*,int ,int) ;
 int pm_runtime_active (int ) ;
 scalar_t__ snd_hdac_bus_handle_stream_irq (struct hdac_bus*,int,int ) ;
 int snd_hdac_bus_update_rirb (struct hdac_bus*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stream_update ;
 int udelay (int) ;

irqreturn_t azx_interrupt(int irq, void *dev_id)
{
 struct azx *chip = dev_id;
 struct hdac_bus *bus = azx_bus(chip);
 u32 status;
 bool active, handled = 0;
 int repeat = 0;







 spin_lock(&bus->reg_lock);

 if (chip->disabled)
  goto unlock;

 do {
  status = azx_readl(chip, INTSTS);
  if (status == 0 || status == 0xffffffff)
   break;

  handled = 1;
  active = 0;
  if (snd_hdac_bus_handle_stream_irq(bus, status, stream_update))
   active = 1;


  status = azx_readb(chip, RIRBSTS);
  if (status & RIRB_INT_MASK) {
   active = 1;
   if (status & RIRB_INT_RESPONSE) {
    if (chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND)
     udelay(80);
    snd_hdac_bus_update_rirb(bus);
   }
   azx_writeb(chip, RIRBSTS, RIRB_INT_MASK);
  }
 } while (active && ++repeat < 10);

 unlock:
 spin_unlock(&bus->reg_lock);

 return IRQ_RETVAL(handled);
}
