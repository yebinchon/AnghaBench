
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int i2c; int cs8427; } ;


 int EIO ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_readbytes (int ,unsigned char*,int) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;

__attribute__((used)) static int snd_ice1712_cs8427_set_input_clock(struct snd_ice1712 *ice, int spdif_clock)
{
 unsigned char reg[2] = { 0x80 | 4, 0 };
 unsigned char val, nval;
 int res = 0;

 snd_i2c_lock(ice->i2c);
 if (snd_i2c_sendbytes(ice->cs8427, reg, 1) != 1) {
  snd_i2c_unlock(ice->i2c);
  return -EIO;
 }
 if (snd_i2c_readbytes(ice->cs8427, &val, 1) != 1) {
  snd_i2c_unlock(ice->i2c);
  return -EIO;
 }
 nval = val & 0xf0;
 if (spdif_clock)
  nval |= 0x01;
 else
  nval |= 0x04;
 if (val != nval) {
  reg[1] = nval;
  if (snd_i2c_sendbytes(ice->cs8427, reg, 2) != 2) {
   res = -EIO;
  } else {
   res++;
  }
 }
 snd_i2c_unlock(ice->i2c);
 return res;
}
