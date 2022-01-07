
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; struct hda_bus* bus; } ;
struct hda_bus {int dummy; } ;


 int EBUSY ;
 scalar_t__ snd_hda_lock_devices (struct hda_bus*) ;
 int snd_hda_unlock_devices (struct hda_bus*) ;
 int snd_hdac_device_unregister (int *) ;

int snd_hda_codec_reset(struct hda_codec *codec)
{
 struct hda_bus *bus = codec->bus;

 if (snd_hda_lock_devices(bus) < 0)
  return -EBUSY;


 snd_hdac_device_unregister(&codec->core);


 snd_hda_unlock_devices(bus);
 return 0;
}
