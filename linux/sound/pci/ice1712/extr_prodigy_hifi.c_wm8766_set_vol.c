
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned char DAC_MIN ;
 unsigned short WM_VOL_MAX ;
 unsigned short WM_VOL_MUTE ;
 int wm8766_spi_write (struct snd_ice1712*,unsigned int,int) ;

__attribute__((used)) static void wm8766_set_vol(struct snd_ice1712 *ice, unsigned int index,
      unsigned short vol, unsigned short master)
{
 unsigned char nvol;

 if ((master & WM_VOL_MUTE) || (vol & WM_VOL_MUTE))
  nvol = 0;
 else {
  nvol = (((vol & ~WM_VOL_MUTE) * (master & ~WM_VOL_MUTE)) / 128)
    & WM_VOL_MAX;
  nvol = (nvol ? (nvol + DAC_MIN) : 0) & 0xff;
 }

 wm8766_spi_write(ice, index, (0x0100 | nvol));
}
