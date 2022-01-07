
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_widget {int ignore_suspend; int name; TYPE_2__* dapm; } ;
struct TYPE_4__ {int dev; TYPE_1__* card; } ;
struct TYPE_3__ {int snd_card; } ;




 int dev_dbg (int ,char*,int ) ;
 int snd_power_get_state (int ) ;

__attribute__((used)) static int snd_soc_dapm_suspend_check(struct snd_soc_dapm_widget *widget)
{
 int level = snd_power_get_state(widget->dapm->card->snd_card);

 switch (level) {
 case 128:
 case 129:
  if (widget->ignore_suspend)
   dev_dbg(widget->dapm->dev, "ASoC: %s ignoring suspend\n",
    widget->name);
  return widget->ignore_suspend;
 default:
  return 1;
 }
}
