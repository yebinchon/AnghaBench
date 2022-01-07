
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_cs46xx* device_data; } ;
struct snd_cs46xx {int dummy; } ;


 int snd_cs46xx_free (struct snd_cs46xx*) ;

__attribute__((used)) static int snd_cs46xx_dev_free(struct snd_device *device)
{
 struct snd_cs46xx *chip = device->device_data;
 return snd_cs46xx_free(chip);
}
