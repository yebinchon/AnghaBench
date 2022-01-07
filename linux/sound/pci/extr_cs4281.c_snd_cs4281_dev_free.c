
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct cs4281* device_data; } ;
struct cs4281 {int dummy; } ;


 int snd_cs4281_free (struct cs4281*) ;

__attribute__((used)) static int snd_cs4281_dev_free(struct snd_device *device)
{
 struct cs4281 *chip = device->device_data;
 return snd_cs4281_free(chip);
}
