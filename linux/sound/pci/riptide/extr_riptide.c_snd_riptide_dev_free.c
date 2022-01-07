
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_riptide {int dummy; } ;
struct snd_device {struct snd_riptide* device_data; } ;


 int snd_riptide_free (struct snd_riptide*) ;

__attribute__((used)) static int snd_riptide_dev_free(struct snd_device *device)
{
 struct snd_riptide *chip = device->device_data;

 return snd_riptide_free(chip);
}
