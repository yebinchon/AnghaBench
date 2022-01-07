
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus_ops {int dummy; } ;
struct hdac_bus {int irq; int hlink_list; int lock; int cmd_mutex; int reg_lock; int unsol_work; int codec_list; int stream_list; int dma_type; struct hdac_bus_ops const* ops; struct device* dev; } ;
struct device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SNDRV_DMA_TYPE_DEV ;
 struct hdac_bus_ops const default_ops ;
 int memset (struct hdac_bus*,int ,int) ;
 int mutex_init (int *) ;
 int snd_hdac_bus_process_unsol_events ;
 int spin_lock_init (int *) ;

int snd_hdac_bus_init(struct hdac_bus *bus, struct device *dev,
        const struct hdac_bus_ops *ops)
{
 memset(bus, 0, sizeof(*bus));
 bus->dev = dev;
 if (ops)
  bus->ops = ops;
 else
  bus->ops = &default_ops;
 bus->dma_type = SNDRV_DMA_TYPE_DEV;
 INIT_LIST_HEAD(&bus->stream_list);
 INIT_LIST_HEAD(&bus->codec_list);
 INIT_WORK(&bus->unsol_work, snd_hdac_bus_process_unsol_events);
 spin_lock_init(&bus->reg_lock);
 mutex_init(&bus->cmd_mutex);
 mutex_init(&bus->lock);
 INIT_LIST_HEAD(&bus->hlink_list);
 bus->irq = -1;
 return 0;
}
