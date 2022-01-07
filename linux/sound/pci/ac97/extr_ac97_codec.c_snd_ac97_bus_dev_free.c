
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_ac97_bus* device_data; } ;
struct snd_ac97_bus {int dummy; } ;


 int snd_ac97_bus_free (struct snd_ac97_bus*) ;

__attribute__((used)) static int snd_ac97_bus_dev_free(struct snd_device *device)
{
 struct snd_ac97_bus *bus = device->device_data;
 return snd_ac97_bus_free(bus);
}
