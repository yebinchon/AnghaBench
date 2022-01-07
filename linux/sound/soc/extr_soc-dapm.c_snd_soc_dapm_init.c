
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int idle_bias_off; int list; int dev; int suspend_bias_off; int bias_level; struct snd_soc_component* component; struct snd_soc_card* card; } ;
struct snd_soc_component {TYPE_1__* driver; int dev; } ;
struct snd_soc_card {int dapm_list; int dev; } ;
struct TYPE_2__ {int suspend_bias_off; int idle_bias_on; } ;


 int INIT_LIST_HEAD (int *) ;
 int SND_SOC_BIAS_OFF ;
 int list_add (int *,int *) ;

void snd_soc_dapm_init(struct snd_soc_dapm_context *dapm,
         struct snd_soc_card *card,
         struct snd_soc_component *component)
{
 dapm->card = card;
 dapm->component = component;
 dapm->bias_level = SND_SOC_BIAS_OFF;

 if (component) {
  dapm->dev = component->dev;
  dapm->idle_bias_off = !component->driver->idle_bias_on,
  dapm->suspend_bias_off = component->driver->suspend_bias_off;
 } else {
  dapm->dev = card->dev;
 }

 INIT_LIST_HEAD(&dapm->list);
 list_add(&dapm->list, &card->dapm_list);
}
