
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* get_data ) (struct snd_ice1712*) ;int (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 unsigned int GPIO_FREQ_48KHZ ;
 unsigned int GPIO_MULTI_1X ;
 unsigned int GPIO_RATE_MASK ;
 unsigned int stub1 (struct snd_ice1712*) ;
 int stub2 (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static int juli_set_spdif_clock(struct snd_ice1712 *ice, int type)
{
 unsigned int old;
 old = ice->gpio.get_data(ice);

 ice->gpio.set_data(ice, (old & ~GPIO_RATE_MASK) | GPIO_MULTI_1X |
   GPIO_FREQ_48KHZ);
 return 0;
}
