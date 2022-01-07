
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short active_voices; int playback_freq; scalar_t__ enh_mode; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int SNDRV_GF1_GB_ACTIVE_VOICES ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;
 int udelay (int) ;

void snd_gf1_select_active_voices(struct snd_gus_card * gus)
{
 unsigned short voices;

 static unsigned short voices_tbl[32 - 14 + 1] =
 {
     44100, 41160, 38587, 36317, 34300, 32494, 30870, 29400, 28063, 26843,
     25725, 24696, 23746, 22866, 22050, 21289, 20580, 19916, 19293
 };

 voices = gus->gf1.active_voices;
 if (voices > 32)
  voices = 32;
 if (voices < 14)
  voices = 14;
 if (gus->gf1.enh_mode)
  voices = 32;
 gus->gf1.active_voices = voices;
 gus->gf1.playback_freq =
     gus->gf1.enh_mode ? 44100 : voices_tbl[voices - 14];
 if (!gus->gf1.enh_mode) {
  snd_gf1_i_write8(gus, SNDRV_GF1_GB_ACTIVE_VOICES, 0xc0 | (voices - 1));
  udelay(100);
 }
}
