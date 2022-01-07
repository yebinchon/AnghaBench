
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char (* get_data ) (struct snd_ice1712*) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 int ARRAY_SIZE (unsigned char*) ;
 unsigned char GPIO_RATE_MASK ;
 unsigned char* gpio_vals ;
 unsigned int* juli_rates ;
 unsigned char stub1 (struct snd_ice1712*) ;

__attribute__((used)) static unsigned int juli_get_rate(struct snd_ice1712 *ice)
{
 int i;
 unsigned char result;

 result = ice->gpio.get_data(ice) & GPIO_RATE_MASK;
 for (i = 0; i < ARRAY_SIZE(gpio_vals); i++)
  if (gpio_vals[i] == result)
   return juli_rates[i];
 return 0;
}
