
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_enabled; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int SNDRV_GF1_GB_SOUND_BLASTER_CONTROL ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int) ;

__attribute__((used)) static void snd_gf1_default_interrupt_handler_timer2(struct snd_gus_card * gus)
{
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, gus->gf1.timer_enabled &= ~8);
}
