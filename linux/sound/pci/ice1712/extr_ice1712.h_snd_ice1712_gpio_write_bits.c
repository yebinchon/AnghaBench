
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 unsigned int snd_ice1712_gpio_read (struct snd_ice1712*) ;
 int snd_ice1712_gpio_set_dir (struct snd_ice1712*,unsigned int) ;
 int snd_ice1712_gpio_write (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static inline void snd_ice1712_gpio_write_bits(struct snd_ice1712 *ice,
            unsigned int mask, unsigned int bits)
{
 unsigned val;

 ice->gpio.direction |= mask;
 snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
 val = snd_ice1712_gpio_read(ice);
 val &= ~mask;
 val |= mask & bits;
 snd_ice1712_gpio_write(ice, val);
}
