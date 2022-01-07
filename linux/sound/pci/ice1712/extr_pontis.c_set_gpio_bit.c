
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static void set_gpio_bit(struct snd_ice1712 *ice, unsigned int bit, int val)
{
 unsigned int tmp = snd_ice1712_gpio_read(ice);
 if (val)
  tmp |= bit;
 else
  tmp &= ~bit;
 snd_ice1712_gpio_write(ice, tmp);
}
