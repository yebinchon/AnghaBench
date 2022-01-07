
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_id {scalar_t__ subdevice; scalar_t__ device; int card; int dev_sclass; int dev_class; } ;
struct snd_timer {int hw; struct snd_cs4231* private_data; int name; } ;
struct snd_cs4231 {struct snd_timer* timer; } ;
struct snd_card {int number; struct snd_cs4231* private_data; } ;


 int SNDRV_TIMER_CLASS_CARD ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_cs4231_timer_table ;
 int snd_timer_new (struct snd_card*,char*,struct snd_timer_id*,struct snd_timer**) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_cs4231_timer(struct snd_card *card)
{
 struct snd_cs4231 *chip = card->private_data;
 struct snd_timer *timer;
 struct snd_timer_id tid;
 int err;


 tid.dev_class = SNDRV_TIMER_CLASS_CARD;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = card->number;
 tid.device = 0;
 tid.subdevice = 0;
 err = snd_timer_new(card, "CS4231", &tid, &timer);
 if (err < 0)
  return err;
 strcpy(timer->name, "CS4231");
 timer->private_data = chip;
 timer->hw = snd_cs4231_timer_table;
 chip->timer = timer;

 return 0;
}
