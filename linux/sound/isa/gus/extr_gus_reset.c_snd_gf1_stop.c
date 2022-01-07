
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int SNDRV_GF1_GB_RESET ;
 int SNDRV_GF1_GB_SOUND_BLASTER_CONTROL ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;
 int snd_gf1_lfo_done (struct snd_gus_card*) ;
 int snd_gf1_mem_done (struct snd_gus_card*) ;
 int snd_gf1_stop_voices (struct snd_gus_card*,int ,int) ;
 int snd_gf1_timers_done (struct snd_gus_card*) ;

int snd_gf1_stop(struct snd_gus_card * gus)
{
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, 0);
 snd_gf1_stop_voices(gus, 0, 31);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RESET, 1);
 snd_gf1_timers_done(gus);
 snd_gf1_mem_done(gus);



 return 0;
}
