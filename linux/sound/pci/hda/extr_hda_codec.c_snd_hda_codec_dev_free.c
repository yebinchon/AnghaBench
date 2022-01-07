
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_device {struct hda_codec* device_data; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct hda_codec {int in_freeing; TYPE_1__ core; } ;


 scalar_t__ HDA_DEV_LEGACY ;
 int codec_display_power (struct hda_codec*,int) ;
 int hda_codec_dev (struct hda_codec*) ;
 int put_device (int ) ;
 int snd_hdac_device_unregister (TYPE_1__*) ;

__attribute__((used)) static int snd_hda_codec_dev_free(struct snd_device *device)
{
 struct hda_codec *codec = device->device_data;

 codec->in_freeing = 1;





 if (codec->core.type == HDA_DEV_LEGACY)
  snd_hdac_device_unregister(&codec->core);
 codec_display_power(codec, 0);





 if (codec->core.type == HDA_DEV_LEGACY)
  put_device(hda_codec_dev(codec));

 return 0;
}
