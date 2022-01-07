
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;
struct snd_device {struct snd_i2c_bus* device_data; } ;


 int snd_i2c_bus_free (struct snd_i2c_bus*) ;

__attribute__((used)) static int snd_i2c_bus_dev_free(struct snd_device *device)
{
 struct snd_i2c_bus *bus = device->device_data;
 return snd_i2c_bus_free(bus);
}
