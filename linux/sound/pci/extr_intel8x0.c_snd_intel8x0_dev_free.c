
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct intel8x0* device_data; } ;
struct intel8x0 {int dummy; } ;


 int snd_intel8x0_free (struct intel8x0*) ;

__attribute__((used)) static int snd_intel8x0_dev_free(struct snd_device *device)
{
 struct intel8x0 *chip = device->device_data;
 return snd_intel8x0_free(chip);
}
