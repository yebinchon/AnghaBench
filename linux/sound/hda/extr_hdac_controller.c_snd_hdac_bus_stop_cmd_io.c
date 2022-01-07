
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int reg_lock; } ;


 int AZX_GCTL_UNSOL ;
 int CORBCTL ;
 int GCTL ;
 int RIRBCTL ;
 int hdac_wait_for_cmd_dmas (struct hdac_bus*) ;
 int snd_hdac_chip_updatel (struct hdac_bus*,int ,int ,int ) ;
 int snd_hdac_chip_writeb (struct hdac_bus*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_hdac_bus_stop_cmd_io(struct hdac_bus *bus)
{
 spin_lock_irq(&bus->reg_lock);

 snd_hdac_chip_writeb(bus, RIRBCTL, 0);
 snd_hdac_chip_writeb(bus, CORBCTL, 0);
 spin_unlock_irq(&bus->reg_lock);

 hdac_wait_for_cmd_dmas(bus);

 spin_lock_irq(&bus->reg_lock);

 snd_hdac_chip_updatel(bus, GCTL, AZX_GCTL_UNSOL, 0);
 spin_unlock_irq(&bus->reg_lock);
}
