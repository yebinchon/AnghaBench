
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int dummy; } ;


 unsigned int SPI ;
 unsigned int snd_ca0106_ptr_read (struct snd_ca0106*,unsigned int,int ) ;
 int snd_ca0106_ptr_write (struct snd_ca0106*,unsigned int,int ,unsigned int) ;
 int udelay (int) ;

int snd_ca0106_spi_write(struct snd_ca0106 * emu,
       unsigned int data)
{
 unsigned int reset, set;
 unsigned int reg, tmp;
 int n, result;
 reg = SPI;
 if (data > 0xffff)
  return 1;
 tmp = snd_ca0106_ptr_read(emu, reg, 0);
 reset = (tmp & ~0x3ffff) | 0x20000;
 set = reset | 0x10000;
 snd_ca0106_ptr_write(emu, reg, 0, reset | data);
 tmp = snd_ca0106_ptr_read(emu, reg, 0);
 snd_ca0106_ptr_write(emu, reg, 0, set | data);
 result = 1;

 for (n = 0; n < 100; n++) {
  udelay(10);
  tmp = snd_ca0106_ptr_read(emu, reg, 0);
  if (!(tmp & 0x10000)) {
   result = 0;
   break;
  }
 }
 if (result)
  return 1;
 snd_ca0106_ptr_write(emu, reg, 0, reset | data);
 tmp = snd_ca0106_ptr_read(emu, reg, 0);
 return 0;
}
