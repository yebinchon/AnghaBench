
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;


 int snd_i2c_bit_set (struct snd_i2c_bus*,int,int) ;

__attribute__((used)) static void snd_i2c_bit_send(struct snd_i2c_bus *bus, int data)
{
 snd_i2c_bit_set(bus, 0, data);
 snd_i2c_bit_set(bus, 1, data);
 snd_i2c_bit_set(bus, 0, data);
}
