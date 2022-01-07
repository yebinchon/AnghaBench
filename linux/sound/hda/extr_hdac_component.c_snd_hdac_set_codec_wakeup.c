
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_bus {int dev; struct drm_audio_component* audio_component; } ;
struct drm_audio_component {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* codec_wake_override ) (int ,int) ;} ;


 int ENODEV ;
 int dev_dbg (int ,char*,char*) ;
 int stub1 (int ,int) ;

int snd_hdac_set_codec_wakeup(struct hdac_bus *bus, bool enable)
{
 struct drm_audio_component *acomp = bus->audio_component;

 if (!acomp || !acomp->ops)
  return -ENODEV;

 if (!acomp->ops->codec_wake_override)
  return 0;

 dev_dbg(bus->dev, "%s codec wakeup\n",
  enable ? "enable" : "disable");

 acomp->ops->codec_wake_override(acomp->dev, enable);

 return 0;
}
