
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_ad1816a* device_data; } ;
struct snd_ad1816a {int dummy; } ;


 int snd_ad1816a_free (struct snd_ad1816a*) ;

__attribute__((used)) static int snd_ad1816a_dev_free(struct snd_device *device)
{
 struct snd_ad1816a *chip = device->device_data;
 return snd_ad1816a_free(chip);
}
