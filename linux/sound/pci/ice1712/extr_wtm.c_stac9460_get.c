
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int STAC9460_I2C_ADDR ;
 unsigned char snd_vt1724_read_i2c (struct snd_ice1712*,int ,int) ;

__attribute__((used)) static inline unsigned char stac9460_get(struct snd_ice1712 *ice, int reg)
{
 return snd_vt1724_read_i2c(ice, STAC9460_I2C_ADDR, reg);
}
