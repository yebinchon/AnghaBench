
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;


 int snd_i2c_bit_direction (struct snd_i2c_bus*,int,int) ;
 int snd_i2c_bit_hw_start (struct snd_i2c_bus*) ;
 int snd_i2c_bit_set (struct snd_i2c_bus*,int,int) ;

__attribute__((used)) static void snd_i2c_bit_start(struct snd_i2c_bus *bus)
{
 snd_i2c_bit_hw_start(bus);
 snd_i2c_bit_direction(bus, 1, 1);
 snd_i2c_bit_set(bus, 1, 1);
 snd_i2c_bit_set(bus, 1, 0);
 snd_i2c_bit_set(bus, 0, 0);
}
