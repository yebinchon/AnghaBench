
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_i2c_bus {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* probeaddr ) (struct snd_i2c_bus*,unsigned short) ;} ;


 int stub1 (struct snd_i2c_bus*,unsigned short) ;

int snd_i2c_probeaddr(struct snd_i2c_bus *bus, unsigned short addr)
{
 return bus->ops->probeaddr(bus, addr);
}
