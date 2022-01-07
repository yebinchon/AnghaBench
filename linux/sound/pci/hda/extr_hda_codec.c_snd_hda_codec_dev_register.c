
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {int device_data; } ;


 int snd_hda_codec_register (int ) ;

__attribute__((used)) static int snd_hda_codec_dev_register(struct snd_device *device)
{
 snd_hda_codec_register(device->device_data);
 return 0;
}
