
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int dummy; } ;
struct snd_device {struct snd_pmac* device_data; } ;


 int snd_pmac_free (struct snd_pmac*) ;

__attribute__((used)) static int snd_pmac_dev_free(struct snd_device *device)
{
 struct snd_pmac *chip = device->device_data;
 return snd_pmac_free(chip);
}
