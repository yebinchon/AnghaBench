
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* get_dir ) (struct snd_ice1712*) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 unsigned int stub1 (struct snd_ice1712*) ;

__attribute__((used)) static inline unsigned int snd_ice1712_gpio_get_dir(struct snd_ice1712 *ice)
{
 return ice->gpio.get_dir(ice);
}
