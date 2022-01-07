
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {scalar_t__ codec_mask; int dev; } ;


 int EBUSY ;
 int GCTL ;
 int STATESTS ;
 int STATESTS_INT_MASK ;
 int dev_dbg (int ,char*,...) ;
 int snd_hdac_bus_enter_link_reset (struct hdac_bus*) ;
 int snd_hdac_bus_exit_link_reset (struct hdac_bus*) ;
 int snd_hdac_chip_readb (struct hdac_bus*,int ) ;
 scalar_t__ snd_hdac_chip_readw (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writew (struct hdac_bus*,int ,int ) ;
 int usleep_range (int,int) ;

int snd_hdac_bus_reset_link(struct hdac_bus *bus, bool full_reset)
{
 if (!full_reset)
  goto skip_reset;


 snd_hdac_chip_writew(bus, STATESTS, STATESTS_INT_MASK);


 snd_hdac_bus_enter_link_reset(bus);




 usleep_range(500, 1000);


 snd_hdac_bus_exit_link_reset(bus);


 usleep_range(1000, 1200);

 skip_reset:

 if (!snd_hdac_chip_readb(bus, GCTL)) {
  dev_dbg(bus->dev, "controller not ready!\n");
  return -EBUSY;
 }


 if (!bus->codec_mask) {
  bus->codec_mask = snd_hdac_chip_readw(bus, STATESTS);
  dev_dbg(bus->dev, "codec_mask = 0x%lx\n", bus->codec_mask);
 }

 return 0;
}
