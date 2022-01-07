
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct ensoniq* device_data; } ;
struct ensoniq {int dummy; } ;


 int snd_ensoniq_free (struct ensoniq*) ;

__attribute__((used)) static int snd_ensoniq_dev_free(struct snd_device *device)
{
 struct ensoniq *ensoniq = device->device_data;
 return snd_ensoniq_free(ensoniq);
}
