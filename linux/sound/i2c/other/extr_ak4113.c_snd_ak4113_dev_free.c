
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct ak4113* device_data; } ;
struct ak4113 {int dummy; } ;


 int snd_ak4113_free (struct ak4113*) ;

__attribute__((used)) static int snd_ak4113_dev_free(struct snd_device *device)
{
 struct ak4113 *chip = device->device_data;
 snd_ak4113_free(chip);
 return 0;
}
