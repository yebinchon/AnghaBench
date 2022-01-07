
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* get_dir ) (struct snd_ice1712*) ;unsigned int (* get_data ) (struct snd_ice1712*) ;int (* set_dir ) (struct snd_ice1712*,unsigned int) ;int (* set_mask ) (struct snd_ice1712*,int) ;int (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;


 int AK4620_ADDR ;
 unsigned int GPIO_D4_SPI_CDTO ;
 unsigned int GPIO_D5_SPI_CCLK ;
 unsigned int GPIO_SPI_ALL ;
 unsigned int GPIO_SPI_CSN0 ;
 unsigned int GPIO_SPI_CSN1 ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned int stub1 (struct snd_ice1712*) ;
 int stub10 (struct snd_ice1712*,unsigned int) ;
 int stub11 (struct snd_ice1712*,int) ;
 int stub12 (struct snd_ice1712*,unsigned int) ;
 int stub2 (struct snd_ice1712*,unsigned int) ;
 int stub3 (struct snd_ice1712*,unsigned int) ;
 unsigned int stub4 (struct snd_ice1712*) ;
 int stub5 (struct snd_ice1712*,unsigned int) ;
 int stub6 (struct snd_ice1712*,unsigned int) ;
 int stub7 (struct snd_ice1712*,unsigned int) ;
 int stub8 (struct snd_ice1712*,unsigned int) ;
 int stub9 (struct snd_ice1712*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void qtet_akm_write(struct snd_akm4xxx *ak, int chip,
  unsigned char addr, unsigned char data)
{
 unsigned int tmp, orig_dir;
 int idx;
 unsigned int addrdata;
 struct snd_ice1712 *ice = ak->private_data[0];

 if (snd_BUG_ON(chip < 0 || chip >= 4))
  return;


 orig_dir = ice->gpio.get_dir(ice);
 ice->gpio.set_dir(ice, orig_dir | GPIO_SPI_ALL);

 ice->gpio.set_mask(ice, ~GPIO_SPI_ALL);

 tmp = ice->gpio.get_data(ice);

 tmp |= GPIO_SPI_ALL;
 ice->gpio.set_data(ice, tmp);
 udelay(100);

 if (chip)

  tmp &= ~GPIO_SPI_CSN1;
 else
  tmp &= ~GPIO_SPI_CSN0;
 ice->gpio.set_data(ice, tmp);
 udelay(100);


 addrdata = (AK4620_ADDR << 6) | 0x20 | (addr & 0x1f);
 addrdata = (addrdata << 8) | data;
 for (idx = 15; idx >= 0; idx--) {

  tmp &= ~GPIO_D5_SPI_CCLK;
  ice->gpio.set_data(ice, tmp);
  udelay(100);

  if (addrdata & (1 << idx))
   tmp |= GPIO_D4_SPI_CDTO;
  else
   tmp &= ~GPIO_D4_SPI_CDTO;
  ice->gpio.set_data(ice, tmp);
  udelay(100);

  tmp |= GPIO_D5_SPI_CCLK;
  ice->gpio.set_data(ice, tmp);
  udelay(100);
 }

 tmp |= GPIO_SPI_ALL;
 ice->gpio.set_data(ice, tmp);
 udelay(100);


 ice->gpio.set_mask(ice, 0xffffff);

 ice->gpio.set_dir(ice, orig_dir);
}
