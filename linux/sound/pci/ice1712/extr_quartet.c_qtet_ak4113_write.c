
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AK4113_ADDR ;
 int snd_vt1724_write_i2c (struct snd_ice1712*,int ,unsigned char,unsigned char) ;

__attribute__((used)) static void qtet_ak4113_write(void *private_data, unsigned char reg,
  unsigned char val)
{
 snd_vt1724_write_i2c((struct snd_ice1712 *)private_data, AK4113_ADDR,
   reg, val);
}
