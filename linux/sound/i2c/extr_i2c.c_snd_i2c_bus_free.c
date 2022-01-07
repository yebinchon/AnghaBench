
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_i2c_device {int dummy; } ;
struct TYPE_3__ {int next; } ;
struct snd_i2c_bus {int (* private_free ) (struct snd_i2c_bus*) ;int card; TYPE_1__ buses; scalar_t__ master; TYPE_1__ devices; } ;


 int EINVAL ;
 int kfree (struct snd_i2c_bus*) ;
 int list_del (TYPE_1__*) ;
 int list_empty (TYPE_1__*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_device_free (int ,struct snd_i2c_bus*) ;
 struct snd_i2c_device* snd_i2c_device (int ) ;
 int snd_i2c_device_free (struct snd_i2c_device*) ;
 struct snd_i2c_bus* snd_i2c_slave_bus (int ) ;
 int stub1 (struct snd_i2c_bus*) ;

__attribute__((used)) static int snd_i2c_bus_free(struct snd_i2c_bus *bus)
{
 struct snd_i2c_bus *slave;
 struct snd_i2c_device *device;

 if (snd_BUG_ON(!bus))
  return -EINVAL;
 while (!list_empty(&bus->devices)) {
  device = snd_i2c_device(bus->devices.next);
  snd_i2c_device_free(device);
 }
 if (bus->master)
  list_del(&bus->buses);
 else {
  while (!list_empty(&bus->buses)) {
   slave = snd_i2c_slave_bus(bus->buses.next);
   snd_device_free(bus->card, slave);
  }
 }
 if (bus->private_free)
  bus->private_free(bus);
 kfree(bus);
 return 0;
}
