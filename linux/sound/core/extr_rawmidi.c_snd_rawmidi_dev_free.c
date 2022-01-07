
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int dummy; } ;
struct snd_device {struct snd_rawmidi* device_data; } ;


 int snd_rawmidi_free (struct snd_rawmidi*) ;

__attribute__((used)) static int snd_rawmidi_dev_free(struct snd_device *device)
{
 struct snd_rawmidi *rmidi = device->device_data;

 return snd_rawmidi_free(rmidi);
}
