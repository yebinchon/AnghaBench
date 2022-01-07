
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;


 int ICE1712_IREG_GPIO_DIRECTION ;
 int ICE1712_IREG_GPIO_WRITE_MASK ;
 unsigned char ICE1712_STDSP24_AK4524_CS ;
 unsigned char ICE1712_STDSP24_SERIAL_CLOCK ;
 unsigned char ICE1712_STDSP24_SERIAL_DATA ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static void stdsp24_ak4524_lock(struct snd_akm4xxx *ak, int chip)
{
 struct snd_ice1712 *ice = ak->private_data[0];
 unsigned char tmp;
 snd_ice1712_save_gpio_status(ice);
 tmp = ICE1712_STDSP24_SERIAL_DATA |
  ICE1712_STDSP24_SERIAL_CLOCK |
  ICE1712_STDSP24_AK4524_CS;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DIRECTION,
     ice->gpio.direction | tmp);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_WRITE_MASK, ~tmp);
}
