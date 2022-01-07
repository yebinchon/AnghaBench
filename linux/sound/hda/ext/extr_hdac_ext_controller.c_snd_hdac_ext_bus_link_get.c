
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_link {int ref_count; int ml_addr; } ;
struct hdac_bus {int cmd_dma_state; int lock; int codec_mask; int dev; } ;


 int AZX_REG_ML_LOSIDV ;
 int ML_LOSIDV_STREAM_MASK ;
 int STATESTS ;
 int dev_dbg (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hdac_bus_init_cmd_io (struct hdac_bus*) ;
 int snd_hdac_chip_readw (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writew (struct hdac_bus*,int ,int ) ;
 int snd_hdac_ext_bus_link_power_up (struct hdac_ext_link*) ;
 int snd_hdac_updatew (int ,int ,int ,int ) ;
 int udelay (int) ;

int snd_hdac_ext_bus_link_get(struct hdac_bus *bus,
    struct hdac_ext_link *link)
{
 int ret = 0;

 mutex_lock(&bus->lock);





 if (++link->ref_count == 1) {
  if (!bus->cmd_dma_state) {
   snd_hdac_bus_init_cmd_io(bus);
   bus->cmd_dma_state = 1;
  }

  ret = snd_hdac_ext_bus_link_power_up(link);




  snd_hdac_updatew(link->ml_addr, AZX_REG_ML_LOSIDV,
     ML_LOSIDV_STREAM_MASK, 0);




  udelay(521);
  bus->codec_mask = snd_hdac_chip_readw(bus, STATESTS);
  dev_dbg(bus->dev, "codec_mask = 0x%lx\n", bus->codec_mask);
  snd_hdac_chip_writew(bus, STATESTS, bus->codec_mask);
 }

 mutex_unlock(&bus->lock);
 return ret;
}
