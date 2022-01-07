
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* res; int * cmds; } ;
struct hdac_bus {int reg_lock; TYPE_1__ rirb; scalar_t__ polling_mode; } ;


 int EIO ;
 int cond_resched () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int snd_hdac_bus_update_rirb (struct hdac_bus*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

int snd_hdac_bus_get_response(struct hdac_bus *bus, unsigned int addr,
         unsigned int *res)
{
 unsigned long timeout;
 unsigned long loopcounter;

 timeout = jiffies + msecs_to_jiffies(1000);

 for (loopcounter = 0;; loopcounter++) {
  spin_lock_irq(&bus->reg_lock);
  if (bus->polling_mode)
   snd_hdac_bus_update_rirb(bus);
  if (!bus->rirb.cmds[addr]) {
   if (res)
    *res = bus->rirb.res[addr];
   spin_unlock_irq(&bus->reg_lock);
   return 0;
  }
  spin_unlock_irq(&bus->reg_lock);
  if (time_after(jiffies, timeout))
   break;
  if (loopcounter > 3000)
   msleep(2);
  else {
   udelay(10);
   cond_resched();
  }
 }

 return -EIO;
}
