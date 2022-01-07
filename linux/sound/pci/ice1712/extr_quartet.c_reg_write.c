
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* get_data ) (struct snd_ice1712*) ;int (* set_dir ) (struct snd_ice1712*,int) ;int (* set_mask ) (struct snd_ice1712*,int) ;int (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {int gpio_mutex; TYPE_1__ gpio; } ;


 unsigned int GPIO_DATA_MASK ;
 unsigned int GPIO_EX_GPIOE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct snd_ice1712*,unsigned int) ;
 int stub10 (struct snd_ice1712*,int) ;
 int stub2 (struct snd_ice1712*,unsigned int) ;
 unsigned int stub3 (struct snd_ice1712*) ;
 int stub4 (struct snd_ice1712*,unsigned int) ;
 int stub5 (struct snd_ice1712*,unsigned int) ;
 int stub6 (struct snd_ice1712*,unsigned int) ;
 int stub7 (struct snd_ice1712*,unsigned int) ;
 int stub8 (struct snd_ice1712*,unsigned int) ;
 int stub9 (struct snd_ice1712*,int) ;
 int udelay (int) ;

__attribute__((used)) static void reg_write(struct snd_ice1712 *ice, unsigned int reg,
  unsigned int data)
{
 unsigned int tmp;

 mutex_lock(&ice->gpio_mutex);


 tmp = 0x00ffff;
 ice->gpio.set_dir(ice, tmp);

 ice->gpio.set_mask(ice, ~(tmp));

 tmp = ice->gpio.get_data(ice);
 tmp &= ~GPIO_DATA_MASK;
 tmp |= data;
 ice->gpio.set_data(ice, tmp);
 udelay(100);

 tmp &= ~GPIO_EX_GPIOE;
 ice->gpio.set_data(ice, tmp);
 udelay(100);

 tmp &= ~reg;
 ice->gpio.set_data(ice, tmp);
 udelay(100);

 tmp |= reg;
 ice->gpio.set_data(ice, tmp);
 udelay(100);


 tmp |= GPIO_DATA_MASK;
 ice->gpio.set_data(ice, tmp);

 ice->gpio.set_mask(ice, 0xffffff);

 ice->gpio.set_dir(ice, 0x00ff00);
 mutex_unlock(&ice->gpio_mutex);
}
