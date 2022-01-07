
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_id {int device; scalar_t__ subdevice; int card; int dev_sclass; int dev_class; } ;
struct snd_timer {int hw; struct snd_opl3* private_data; int name; } ;
struct snd_opl3 {struct snd_timer* timer1; TYPE_1__* card; } ;
struct TYPE_2__ {int number; } ;


 int SNDRV_TIMER_CLASS_CARD ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_opl3_timer1 ;
 int snd_timer_new (TYPE_1__*,char*,struct snd_timer_id*,struct snd_timer**) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_opl3_timer1_init(struct snd_opl3 * opl3, int timer_no)
{
 struct snd_timer *timer = ((void*)0);
 struct snd_timer_id tid;
 int err;

 tid.dev_class = SNDRV_TIMER_CLASS_CARD;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = opl3->card->number;
 tid.device = timer_no;
 tid.subdevice = 0;
 if ((err = snd_timer_new(opl3->card, "AdLib timer #1", &tid, &timer)) >= 0) {
  strcpy(timer->name, "AdLib timer #1");
  timer->private_data = opl3;
  timer->hw = snd_opl3_timer1;
 }
 opl3->timer1 = timer;
 return err;
}
