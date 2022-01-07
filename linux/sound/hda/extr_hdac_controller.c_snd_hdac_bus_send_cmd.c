
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * buf; } ;
struct TYPE_3__ {int * cmds; } ;
struct hdac_bus {unsigned int* last_cmd; int reg_lock; TYPE_2__ corb; TYPE_1__ rirb; } ;


 unsigned int AZX_MAX_CORB_ENTRIES ;
 int CORBRP ;
 int CORBWP ;
 int EAGAIN ;
 int EIO ;
 size_t azx_command_addr (unsigned int) ;
 int cpu_to_le32 (unsigned int) ;
 unsigned int snd_hdac_chip_readw (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writew (struct hdac_bus*,int ,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_hdac_bus_send_cmd(struct hdac_bus *bus, unsigned int val)
{
 unsigned int addr = azx_command_addr(val);
 unsigned int wp, rp;

 spin_lock_irq(&bus->reg_lock);

 bus->last_cmd[azx_command_addr(val)] = val;


 wp = snd_hdac_chip_readw(bus, CORBWP);
 if (wp == 0xffff) {

  spin_unlock_irq(&bus->reg_lock);
  return -EIO;
 }
 wp++;
 wp %= AZX_MAX_CORB_ENTRIES;

 rp = snd_hdac_chip_readw(bus, CORBRP);
 if (wp == rp) {

  spin_unlock_irq(&bus->reg_lock);
  return -EAGAIN;
 }

 bus->rirb.cmds[addr]++;
 bus->corb.buf[wp] = cpu_to_le32(val);
 snd_hdac_chip_writew(bus, CORBWP, wp);

 spin_unlock_irq(&bus->reg_lock);

 return 0;
}
