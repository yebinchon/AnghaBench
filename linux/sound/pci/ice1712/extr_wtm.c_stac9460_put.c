
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int STAC9460_I2C_ADDR ;
 int snd_vt1724_write_i2c (struct snd_ice1712*,int ,int,unsigned char) ;

__attribute__((used)) static inline void stac9460_put(struct snd_ice1712 *ice, int reg,
      unsigned char val)
{
 snd_vt1724_write_i2c(ice, STAC9460_I2C_ADDR, reg, val);
}
