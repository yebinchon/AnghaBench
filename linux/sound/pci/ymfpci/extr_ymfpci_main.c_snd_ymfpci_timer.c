
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ymfpci {struct snd_timer* timer; TYPE_1__* card; } ;
struct snd_timer_id {int device; scalar_t__ subdevice; int card; int dev_sclass; int dev_class; } ;
struct snd_timer {int hw; struct snd_ymfpci* private_data; int name; } ;
struct TYPE_2__ {int number; } ;


 int SNDRV_TIMER_CLASS_CARD ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_timer_new (TYPE_1__*,char*,struct snd_timer_id*,struct snd_timer**) ;
 int snd_ymfpci_timer_hw ;
 int strcpy (int ,char*) ;

int snd_ymfpci_timer(struct snd_ymfpci *chip, int device)
{
 struct snd_timer *timer = ((void*)0);
 struct snd_timer_id tid;
 int err;

 tid.dev_class = SNDRV_TIMER_CLASS_CARD;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = chip->card->number;
 tid.device = device;
 tid.subdevice = 0;
 if ((err = snd_timer_new(chip->card, "YMFPCI", &tid, &timer)) >= 0) {
  strcpy(timer->name, "YMFPCI timer");
  timer->private_data = chip;
  timer->hw = snd_ymfpci_timer_hw;
 }
 chip->timer = timer;
 return err;
}
