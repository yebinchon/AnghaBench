
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct hda_codec {TYPE_1__ core; struct hda_codec* wcaps; struct hda_codec* modelname; } ;
struct device {int dummy; } ;


 scalar_t__ HDA_DEV_LEGACY ;
 struct hda_codec* dev_to_hda_codec (struct device*) ;
 int free_init_pincfgs (struct hda_codec*) ;
 int kfree (struct hda_codec*) ;
 int snd_hda_sysfs_clear (struct hda_codec*) ;
 int snd_hdac_device_exit (TYPE_1__*) ;

__attribute__((used)) static void snd_hda_codec_dev_release(struct device *dev)
{
 struct hda_codec *codec = dev_to_hda_codec(dev);

 free_init_pincfgs(codec);
 snd_hdac_device_exit(&codec->core);
 snd_hda_sysfs_clear(codec);
 kfree(codec->modelname);
 kfree(codec->wcaps);





 if (codec->core.type == HDA_DEV_LEGACY)
  kfree(codec);
}
