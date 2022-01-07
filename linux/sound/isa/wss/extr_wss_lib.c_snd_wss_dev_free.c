
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int dummy; } ;
struct snd_device {struct snd_wss* device_data; } ;


 int snd_wss_free (struct snd_wss*) ;

__attribute__((used)) static int snd_wss_dev_free(struct snd_device *device)
{
 struct snd_wss *chip = device->device_data;
 return snd_wss_free(chip);
}
