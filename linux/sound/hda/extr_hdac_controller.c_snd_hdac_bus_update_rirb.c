
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int wp; unsigned int rp; int* res; scalar_t__* cmds; int * buf; } ;
struct hdac_bus {int * last_cmd; int dev; TYPE_1__ rirb; } ;


 unsigned int AZX_MAX_RIRB_ENTRIES ;
 int AZX_RIRB_EX_UNSOL_EV ;
 unsigned int HDA_MAX_CODECS ;
 int RIRBWP ;
 int dev_err (int ,char*,int,int,int,unsigned int) ;
 int dev_err_ratelimited (int ,char*,int,int,int ) ;
 int le32_to_cpu (int ) ;
 int snd_BUG () ;
 int snd_hdac_bus_queue_event (struct hdac_bus*,int,int) ;
 unsigned int snd_hdac_chip_readw (struct hdac_bus*,int ) ;

void snd_hdac_bus_update_rirb(struct hdac_bus *bus)
{
 unsigned int rp, wp;
 unsigned int addr;
 u32 res, res_ex;

 wp = snd_hdac_chip_readw(bus, RIRBWP);
 if (wp == 0xffff) {

  return;
 }

 if (wp == bus->rirb.wp)
  return;
 bus->rirb.wp = wp;

 while (bus->rirb.rp != wp) {
  bus->rirb.rp++;
  bus->rirb.rp %= AZX_MAX_RIRB_ENTRIES;

  rp = bus->rirb.rp << 1;
  res_ex = le32_to_cpu(bus->rirb.buf[rp + 1]);
  res = le32_to_cpu(bus->rirb.buf[rp]);
  addr = res_ex & 0xf;
  if (addr >= HDA_MAX_CODECS) {
   dev_err(bus->dev,
    "spurious response %#x:%#x, rp = %d, wp = %d",
    res, res_ex, bus->rirb.rp, wp);
   snd_BUG();
  } else if (res_ex & AZX_RIRB_EX_UNSOL_EV)
   snd_hdac_bus_queue_event(bus, res, res_ex);
  else if (bus->rirb.cmds[addr]) {
   bus->rirb.res[addr] = res;
   bus->rirb.cmds[addr]--;
  } else {
   dev_err_ratelimited(bus->dev,
    "spurious response %#x:%#x, last cmd=%#08x\n",
    res, res_ex, bus->last_cmd[addr]);
  }
 }
}
