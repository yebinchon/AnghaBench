
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dummy; } ;


 int AZX_CORBCTL_RUN ;
 int AZX_RBCTL_DMA_EN ;
 int CORBCTL ;
 int RIRBCTL ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int snd_hdac_chip_readb (struct hdac_bus*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void hdac_wait_for_cmd_dmas(struct hdac_bus *bus)
{
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(100);
 while ((snd_hdac_chip_readb(bus, RIRBCTL) & AZX_RBCTL_DMA_EN)
  && time_before(jiffies, timeout))
  udelay(10);

 timeout = jiffies + msecs_to_jiffies(100);
 while ((snd_hdac_chip_readb(bus, CORBCTL) & AZX_CORBCTL_RUN)
  && time_before(jiffies, timeout))
  udelay(10);
}
