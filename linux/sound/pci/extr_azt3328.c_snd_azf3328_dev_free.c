
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_azf3328* device_data; } ;
struct snd_azf3328 {int dummy; } ;


 int snd_azf3328_free (struct snd_azf3328*) ;

__attribute__((used)) static int
snd_azf3328_dev_free(struct snd_device *device)
{
 struct snd_azf3328 *chip = device->device_data;
 return snd_azf3328_free(chip);
}
