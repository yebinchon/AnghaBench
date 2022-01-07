
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_MUTE_MASK_STEREO ;
 unsigned short snd_ac97_read (struct snd_ac97*,int) ;
 int snd_ac97_write (struct snd_ac97*,int,unsigned short) ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static void snd_ac97_change_volume_params2(struct snd_ac97 * ac97, int reg, int shift, unsigned char *max)
{
 unsigned short val, val1;

 *max = 63;
 val = AC97_MUTE_MASK_STEREO | (0x20 << shift);
 snd_ac97_write(ac97, reg, val);
 val1 = snd_ac97_read(ac97, reg);
 if (val != val1) {
  *max = 31;
 }

 snd_ac97_write_cache(ac97, reg, AC97_MUTE_MASK_STEREO);
}
