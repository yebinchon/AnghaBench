
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int gpio_mutex; } ;


 unsigned char ICE1712_DELTA_SPDIF_OUT_STAT_CLOCK ;
 unsigned char ICE1712_DELTA_SPDIF_OUT_STAT_DATA ;
 int ICE1712_IREG_GPIO_DATA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned char snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void snd_ice1712_delta_cs8403_spdif_write(struct snd_ice1712 *ice, unsigned char bits)
{
 unsigned char tmp, mask1, mask2;
 int idx;

 mask1 = ICE1712_DELTA_SPDIF_OUT_STAT_CLOCK;
 mask2 = ICE1712_DELTA_SPDIF_OUT_STAT_DATA;
 mutex_lock(&ice->gpio_mutex);
 tmp = snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA);
 for (idx = 7; idx >= 0; idx--) {
  tmp &= ~(mask1 | mask2);
  if (bits & (1 << idx))
   tmp |= mask2;
  snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
  udelay(100);
  tmp |= mask1;
  snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
  udelay(100);
 }
 tmp &= ~mask1;
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
 mutex_unlock(&ice->gpio_mutex);
}
