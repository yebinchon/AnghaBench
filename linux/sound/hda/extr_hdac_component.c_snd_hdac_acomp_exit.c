
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_bus {struct drm_audio_component* audio_component; scalar_t__ display_power_status; int display_power_active; struct device* dev; } ;
struct drm_audio_component {int dev; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* put_power ) (int ,int ) ;} ;


 scalar_t__ WARN_ON (int ) ;
 int component_master_del (struct device*,int *) ;
 int devres_destroy (struct device*,int ,int *,int *) ;
 int hdac_acomp_release ;
 int hdac_component_master_ops ;
 int stub1 (int ,int ) ;

int snd_hdac_acomp_exit(struct hdac_bus *bus)
{
 struct device *dev = bus->dev;
 struct drm_audio_component *acomp = bus->audio_component;

 if (!acomp)
  return 0;

 if (WARN_ON(bus->display_power_active) && acomp->ops)
  acomp->ops->put_power(acomp->dev, bus->display_power_active);

 bus->display_power_active = 0;
 bus->display_power_status = 0;

 component_master_del(dev, &hdac_component_master_ops);

 bus->audio_component = ((void*)0);
 devres_destroy(dev, hdac_acomp_release, ((void*)0), ((void*)0));

 return 0;
}
