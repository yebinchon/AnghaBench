
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ addr; int cmds; scalar_t__ rp; scalar_t__ wp; int * buf; } ;
struct TYPE_5__ {scalar_t__ area; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ addr; int * buf; } ;
struct hdac_bus {int reg_lock; TYPE_3__ rirb; TYPE_2__ rb; int corbrp_self_clear; TYPE_1__ corb; } ;
typedef int __le32 ;


 int AZX_CORBCTL_RUN ;
 int AZX_CORBRP_RST ;
 int AZX_GCTL_UNSOL ;
 int AZX_RBCTL_DMA_EN ;
 int AZX_RBCTL_IRQ_EN ;
 int AZX_RIRBWP_RST ;
 int CORBCTL ;
 int CORBLBASE ;
 int CORBRP ;
 int CORBSIZE ;
 int CORBUBASE ;
 int CORBWP ;
 int GCTL ;
 int RINTCNT ;
 int RIRBCTL ;
 int RIRBLBASE ;
 int RIRBSIZE ;
 int RIRBUBASE ;
 int RIRBWP ;
 int WARN_ON_ONCE (int) ;
 int azx_clear_corbrp (struct hdac_bus*) ;
 int memset (int ,int ,int) ;
 int snd_hdac_chip_updatel (struct hdac_bus*,int ,int ,int ) ;
 int snd_hdac_chip_writeb (struct hdac_bus*,int ,int) ;
 int snd_hdac_chip_writel (struct hdac_bus*,int ,int ) ;
 int snd_hdac_chip_writew (struct hdac_bus*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int upper_32_bits (scalar_t__) ;

void snd_hdac_bus_init_cmd_io(struct hdac_bus *bus)
{
 WARN_ON_ONCE(!bus->rb.area);

 spin_lock_irq(&bus->reg_lock);

 bus->corb.addr = bus->rb.addr;
 bus->corb.buf = (__le32 *)bus->rb.area;
 snd_hdac_chip_writel(bus, CORBLBASE, (u32)bus->corb.addr);
 snd_hdac_chip_writel(bus, CORBUBASE, upper_32_bits(bus->corb.addr));


 snd_hdac_chip_writeb(bus, CORBSIZE, 0x02);

 snd_hdac_chip_writew(bus, CORBWP, 0);


 snd_hdac_chip_writew(bus, CORBRP, AZX_CORBRP_RST);
 if (!bus->corbrp_self_clear)
  azx_clear_corbrp(bus);


 snd_hdac_chip_writeb(bus, CORBCTL, AZX_CORBCTL_RUN);


 bus->rirb.addr = bus->rb.addr + 2048;
 bus->rirb.buf = (__le32 *)(bus->rb.area + 2048);
 bus->rirb.wp = bus->rirb.rp = 0;
 memset(bus->rirb.cmds, 0, sizeof(bus->rirb.cmds));
 snd_hdac_chip_writel(bus, RIRBLBASE, (u32)bus->rirb.addr);
 snd_hdac_chip_writel(bus, RIRBUBASE, upper_32_bits(bus->rirb.addr));


 snd_hdac_chip_writeb(bus, RIRBSIZE, 0x02);

 snd_hdac_chip_writew(bus, RIRBWP, AZX_RIRBWP_RST);

 snd_hdac_chip_writew(bus, RINTCNT, 1);

 snd_hdac_chip_writeb(bus, RIRBCTL, AZX_RBCTL_DMA_EN | AZX_RBCTL_IRQ_EN);

 snd_hdac_chip_updatel(bus, GCTL, AZX_GCTL_UNSOL, AZX_GCTL_UNSOL);
 spin_unlock_irq(&bus->reg_lock);
}
