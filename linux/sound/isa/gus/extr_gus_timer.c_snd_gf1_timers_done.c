
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * timer2; int * timer1; } ;
struct snd_gus_card {TYPE_1__ gf1; int card; } ;


 int SNDRV_GF1_HANDLER_TIMER1 ;
 int SNDRV_GF1_HANDLER_TIMER2 ;
 int snd_device_free (int ,int *) ;
 int snd_gf1_set_default_handlers (struct snd_gus_card*,int) ;

void snd_gf1_timers_done(struct snd_gus_card * gus)
{
 snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_TIMER1 | SNDRV_GF1_HANDLER_TIMER2);
 if (gus->gf1.timer1) {
  snd_device_free(gus->card, gus->gf1.timer1);
  gus->gf1.timer1 = ((void*)0);
 }
 if (gus->gf1.timer2) {
  snd_device_free(gus->card, gus->gf1.timer2);
  gus->gf1.timer2 = ((void*)0);
 }
}
