
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_bus {TYPE_1__* audio_component; } ;
struct drm_audio_component_audio_ops {int dummy; } ;
struct TYPE_2__ {struct drm_audio_component_audio_ops const* audio_ops; } ;


 int ENODEV ;

int snd_hdac_acomp_register_notifier(struct hdac_bus *bus,
        const struct drm_audio_component_audio_ops *aops)
{
 if (!bus->audio_component)
  return -ENODEV;

 bus->audio_component->audio_ops = aops;
 return 0;
}
