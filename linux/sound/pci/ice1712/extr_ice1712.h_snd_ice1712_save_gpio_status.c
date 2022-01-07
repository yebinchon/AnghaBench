
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_mask; int * saved; int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; int gpio_mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static inline void snd_ice1712_save_gpio_status(struct snd_ice1712 *ice)
{
 mutex_lock(&ice->gpio_mutex);
 ice->gpio.saved[0] = ice->gpio.direction;
 ice->gpio.saved[1] = ice->gpio.write_mask;
}
