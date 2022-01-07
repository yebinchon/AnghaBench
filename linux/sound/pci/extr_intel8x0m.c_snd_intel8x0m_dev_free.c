
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct intel8x0m* device_data; } ;
struct intel8x0m {int dummy; } ;


 int snd_intel8x0m_free (struct intel8x0m*) ;

__attribute__((used)) static int snd_intel8x0m_dev_free(struct snd_device *device)
{
 struct intel8x0m *chip = device->device_data;
 return snd_intel8x0m_free(chip);
}
