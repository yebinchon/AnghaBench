
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gpiostate; int gpiodir; int gpiomask; } ;
struct TYPE_3__ {int direction; int write_mask; } ;
struct snd_ice1712 {TYPE_2__ eeprom; TYPE_1__ gpio; } ;


 int ICE1712_IREG_GPIO_DATA ;
 int ICE1712_IREG_GPIO_DIRECTION ;
 int ICE1712_IREG_GPIO_WRITE_MASK ;
 int snd_ice1712_write (struct snd_ice1712*,int ,int ) ;

__attribute__((used)) static int snd_ice1712_ez8_init(struct snd_ice1712 *ice)
{
 ice->gpio.write_mask = ice->eeprom.gpiomask;
 ice->gpio.direction = ice->eeprom.gpiodir;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_WRITE_MASK, ice->eeprom.gpiomask);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DIRECTION, ice->eeprom.gpiodir);
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, ice->eeprom.gpiostate);
 return 0;
}
