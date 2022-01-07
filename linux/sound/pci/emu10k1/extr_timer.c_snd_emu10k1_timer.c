
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_id {int device; scalar_t__ subdevice; int card; int dev_sclass; int dev_class; } ;
struct snd_timer {int hw; struct snd_emu10k1* private_data; int name; } ;
struct snd_emu10k1 {struct snd_timer* timer; TYPE_1__* card; } ;
struct TYPE_2__ {int number; } ;


 int SNDRV_TIMER_CLASS_CARD ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_emu10k1_timer_hw ;
 int snd_timer_new (TYPE_1__*,char*,struct snd_timer_id*,struct snd_timer**) ;
 int strcpy (int ,char*) ;

int snd_emu10k1_timer(struct snd_emu10k1 *emu, int device)
{
 struct snd_timer *timer = ((void*)0);
 struct snd_timer_id tid;
 int err;

 tid.dev_class = SNDRV_TIMER_CLASS_CARD;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = emu->card->number;
 tid.device = device;
 tid.subdevice = 0;
 if ((err = snd_timer_new(emu->card, "EMU10K1", &tid, &timer)) >= 0) {
  strcpy(timer->name, "EMU10K1 timer");
  timer->private_data = emu;
  timer->hw = snd_emu10k1_timer_hw;
 }
 emu->timer = timer;
 return err;
}
