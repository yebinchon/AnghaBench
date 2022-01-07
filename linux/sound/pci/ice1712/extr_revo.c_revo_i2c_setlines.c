
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;


 unsigned int VT1724_REVO_I2C_CLOCK ;
 unsigned int VT1724_REVO_I2C_DATA ;
 int snd_ice1712_gpio_write_bits (struct snd_ice1712*,unsigned int,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void revo_i2c_setlines(struct snd_i2c_bus *bus, int clk, int data)
{
 struct snd_ice1712 *ice = bus->private_data;
 unsigned int val = 0;

 if (clk)
  val |= VT1724_REVO_I2C_CLOCK;
 if (data)
  val |= VT1724_REVO_I2C_DATA;
 snd_ice1712_gpio_write_bits(ice,
        VT1724_REVO_I2C_DATA |
        VT1724_REVO_I2C_CLOCK, val);
 udelay(5);
}
