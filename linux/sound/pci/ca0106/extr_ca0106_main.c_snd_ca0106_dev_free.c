
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_ca0106* device_data; } ;
struct snd_ca0106 {int dummy; } ;


 int snd_ca0106_free (struct snd_ca0106*) ;

__attribute__((used)) static int snd_ca0106_dev_free(struct snd_device *device)
{
 struct snd_ca0106 *chip = device->device_data;
 return snd_ca0106_free(chip);
}
