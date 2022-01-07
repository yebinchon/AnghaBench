
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx {int dummy; } ;
struct snd_device {struct via82xx* device_data; } ;


 int snd_via82xx_free (struct via82xx*) ;

__attribute__((used)) static int snd_via82xx_dev_free(struct snd_device *device)
{
 struct via82xx *chip = device->device_data;
 return snd_via82xx_free(chip);
}
