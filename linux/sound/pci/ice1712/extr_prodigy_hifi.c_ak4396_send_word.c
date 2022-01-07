
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AK4396_CCLK ;
 int AK4396_CDTI ;
 int set_gpio_bit (struct snd_ice1712*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ak4396_send_word(struct snd_ice1712 *ice, unsigned int data)
{
 int i;
 for (i = 0; i < 16; i++) {
  set_gpio_bit(ice, AK4396_CCLK, 0);
  udelay(1);
  set_gpio_bit(ice, AK4396_CDTI, data & 0x8000);
  udelay(1);
  set_gpio_bit(ice, AK4396_CCLK, 1);
  udelay(1);
  data <<= 1;
 }
}
