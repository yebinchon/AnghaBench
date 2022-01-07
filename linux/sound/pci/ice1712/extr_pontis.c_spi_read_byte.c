
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int PONTIS_CS_CLK ;
 int PONTIS_CS_RDATA ;
 int set_gpio_bit (struct snd_ice1712*,int ,int) ;
 int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int spi_read_byte(struct snd_ice1712 *ice)
{
 int i;
 unsigned int val = 0;

 for (i = 0; i < 8; i++) {
  val <<= 1;
  set_gpio_bit(ice, PONTIS_CS_CLK, 0);
  udelay(1);
  if (snd_ice1712_gpio_read(ice) & PONTIS_CS_RDATA)
   val |= 1;
  udelay(1);
  set_gpio_bit(ice, PONTIS_CS_CLK, 1);
  udelay(1);
 }
 return val;
}
