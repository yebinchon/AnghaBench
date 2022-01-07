
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int gpio_mutex; } ;


 unsigned char ICE1712_DELTA_DFS ;
 int ICE1712_IREG_GPIO_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned char snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static void delta_1010_set_rate_val(struct snd_ice1712 *ice, unsigned int rate)
{
 unsigned char tmp, tmp2;

 if (rate == 0)
  return;

 mutex_lock(&ice->gpio_mutex);
 tmp = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA);
 tmp2 = tmp & ~ICE1712_DELTA_DFS;
 if (rate > 48000)
  tmp2 |= ICE1712_DELTA_DFS;
 if (tmp != tmp2)
  snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp2);
 mutex_unlock(&ice->gpio_mutex);
}
