
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reboot_notify ) (struct hda_codec*) ;} ;
struct hda_codec {TYPE_1__ patch_ops; } ;
struct device {int dummy; } ;


 struct hda_codec* dev_to_hda_codec (struct device*) ;
 int pm_runtime_suspended (struct device*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void hda_codec_driver_shutdown(struct device *dev)
{
 struct hda_codec *codec = dev_to_hda_codec(dev);

 if (!pm_runtime_suspended(dev) && codec->patch_ops.reboot_notify)
  codec->patch_ops.reboot_notify(codec);
}
