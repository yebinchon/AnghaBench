
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct es1968* device_data; } ;
struct es1968 {int dummy; } ;


 int snd_es1968_free (struct es1968*) ;

__attribute__((used)) static int snd_es1968_dev_free(struct snd_device *device)
{
 struct es1968 *chip = device->device_data;
 return snd_es1968_free(chip);
}
