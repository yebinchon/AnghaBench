
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_m3 {int dummy; } ;
struct snd_device {struct snd_m3* device_data; } ;


 int snd_m3_free (struct snd_m3*) ;

__attribute__((used)) static int snd_m3_dev_free(struct snd_device *device)
{
 struct snd_m3 *chip = device->device_data;
 return snd_m3_free(chip);
}
