
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int dummy; } ;
struct snd_device {struct snd_es1688* device_data; } ;


 int snd_es1688_free (struct snd_es1688*) ;

__attribute__((used)) static int snd_es1688_dev_free(struct snd_device *device)
{
 struct snd_es1688 *chip = device->device_data;
 return snd_es1688_free(chip);
}
