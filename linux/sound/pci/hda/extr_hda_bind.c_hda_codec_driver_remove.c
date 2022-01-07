
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* free ) (struct hda_codec*) ;} ;
struct hda_codec {TYPE_1__ patch_ops; int core; TYPE_5__* bus; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_8__ {TYPE_4__* ext_ops; } ;
struct TYPE_10__ {TYPE_3__ core; } ;
struct TYPE_9__ {int (* hdev_detach ) (int *) ;} ;
struct TYPE_7__ {int owner; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct hda_codec* dev_to_hda_codec (struct device*) ;
 int module_put (int ) ;
 int snd_hda_codec_cleanup_for_unbind (struct hda_codec*) ;
 int stub1 (int *) ;
 int stub2 (struct hda_codec*) ;

__attribute__((used)) static int hda_codec_driver_remove(struct device *dev)
{
 struct hda_codec *codec = dev_to_hda_codec(dev);

 if (codec->bus->core.ext_ops) {
  if (WARN_ON(!codec->bus->core.ext_ops->hdev_detach))
   return -EINVAL;
  return codec->bus->core.ext_ops->hdev_detach(&codec->core);
 }

 if (codec->patch_ops.free)
  codec->patch_ops.free(codec);
 snd_hda_codec_cleanup_for_unbind(codec);
 module_put(dev->driver->owner);
 return 0;
}
