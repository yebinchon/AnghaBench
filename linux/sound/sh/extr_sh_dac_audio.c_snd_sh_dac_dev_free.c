
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int dummy; } ;
struct snd_device {struct snd_sh_dac* device_data; } ;


 int snd_sh_dac_free (struct snd_sh_dac*) ;

__attribute__((used)) static int snd_sh_dac_dev_free(struct snd_device *device)
{
 struct snd_sh_dac *chip = device->device_data;

 return snd_sh_dac_free(chip);
}
