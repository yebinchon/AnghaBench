
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_bus_ops {int dummy; } ;
struct hdac_bus_ops {int dummy; } ;
struct hdac_bus {int cmd_dma_state; scalar_t__ idx; struct hdac_ext_bus_ops const* ext_ops; } ;
struct device {int dummy; } ;


 int snd_hdac_bus_init (struct hdac_bus*,struct device*,struct hdac_bus_ops const*) ;

int snd_hdac_ext_bus_init(struct hdac_bus *bus, struct device *dev,
   const struct hdac_bus_ops *ops,
   const struct hdac_ext_bus_ops *ext_ops)
{
 int ret;

 ret = snd_hdac_bus_init(bus, dev, ops);
 if (ret < 0)
  return ret;

 bus->ext_ops = ext_ops;





 bus->idx = 0;
 bus->cmd_dma_state = 1;

 return 0;
}
