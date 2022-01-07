
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_device {struct snd_ice1712* device_data; } ;


 int snd_ice1712_free (struct snd_ice1712*) ;

__attribute__((used)) static int snd_ice1712_dev_free(struct snd_device *device)
{
 struct snd_ice1712 *ice = device->device_data;
 return snd_ice1712_free(ice);
}
