
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct fm801* device_data; } ;
struct fm801 {int dummy; } ;


 int snd_fm801_free (struct fm801*) ;

__attribute__((used)) static int snd_fm801_dev_free(struct snd_device *device)
{
 struct fm801 *chip = device->device_data;
 return snd_fm801_free(chip);
}
