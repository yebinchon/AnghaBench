
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_id {int card; int device; int subdevice; int dev_sclass; int dev_class; } ;


 int SNDRV_TIMER_CLASS_NONE ;
 int SNDRV_TIMER_SCLASS_NONE ;

__attribute__((used)) static void snd_timer_user_zero_id(struct snd_timer_id *id)
{
 id->dev_class = SNDRV_TIMER_CLASS_NONE;
 id->dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 id->card = -1;
 id->device = -1;
 id->subdevice = -1;
}
