
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; TYPE_2__* card; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;
struct TYPE_4__ {int dev; } ;


 unsigned char ICE1712_EWS88_RW ;
 unsigned char ICE1712_EWS88_SERIAL_CLOCK ;
 unsigned char ICE1712_EWS88_SERIAL_DATA ;
 int ICE1712_IREG_GPIO_DIRECTION ;
 int ICE1712_IREG_GPIO_WRITE_MASK ;
 int dev_err (int ,char*) ;
 scalar_t__ snd_ice1712_ews88mt_chip_select (struct snd_ice1712*,int) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static void ews88mt_ak4524_lock(struct snd_akm4xxx *ak, int chip)
{
 struct snd_ice1712 *ice = ak->private_data[0];
 unsigned char tmp;

 if (snd_ice1712_ews88mt_chip_select(ice, ~(1 << chip) & 0x0f) < 0)
  dev_err(ice->card->dev, "fatal error (ews88mt chip select)\n");
 snd_ice1712_save_gpio_status(ice);
 tmp = ICE1712_EWS88_SERIAL_DATA |
  ICE1712_EWS88_SERIAL_CLOCK |
  ICE1712_EWS88_RW;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DIRECTION,
     ice->gpio.direction | tmp);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_WRITE_MASK, ~tmp);
}
