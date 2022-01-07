
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {int dummy; } ;
struct snd_device {struct via82xx_modem* device_data; } ;


 int snd_via82xx_free (struct via82xx_modem*) ;

__attribute__((used)) static int snd_via82xx_dev_free(struct snd_device *device)
{
 struct via82xx_modem *chip = device->device_data;
 return snd_via82xx_free(chip);
}
