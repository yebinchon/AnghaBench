
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICE1712_IREG_GPIO_WRITE_MASK ;
 unsigned int snd_ice1712_read (struct snd_ice1712*,int ) ;

__attribute__((used)) static unsigned int snd_ice1712_get_gpio_mask(struct snd_ice1712 *ice)
{
 return snd_ice1712_read(ice, ICE1712_IREG_GPIO_WRITE_MASK);
}
