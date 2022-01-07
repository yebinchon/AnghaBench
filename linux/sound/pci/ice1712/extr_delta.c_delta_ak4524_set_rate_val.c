
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int gpio_mutex; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;


 unsigned char ICE1712_DELTA_DFS ;
 int ICE1712_IREG_GPIO_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_akm4xxx_reset (struct snd_akm4xxx*,int) ;
 unsigned char snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static void delta_ak4524_set_rate_val(struct snd_akm4xxx *ak, unsigned int rate)
{
 unsigned char tmp, tmp2;
 struct snd_ice1712 *ice = ak->private_data[0];

 if (rate == 0)
  return;


 mutex_lock(&ice->gpio_mutex);
 tmp = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA);
 mutex_unlock(&ice->gpio_mutex);
 tmp2 = tmp & ~ICE1712_DELTA_DFS;
 if (rate > 48000)
  tmp2 |= ICE1712_DELTA_DFS;
 if (tmp == tmp2)
  return;


 snd_akm4xxx_reset(ak, 1);
 mutex_lock(&ice->gpio_mutex);
 tmp = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA) & ~ICE1712_DELTA_DFS;
 if (rate > 48000)
  tmp |= ICE1712_DELTA_DFS;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
 mutex_unlock(&ice->gpio_mutex);
 snd_akm4xxx_reset(ak, 0);
}
