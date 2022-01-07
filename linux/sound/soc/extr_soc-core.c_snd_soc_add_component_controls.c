
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int name_prefix; int dev; TYPE_1__* card; } ;
struct snd_kcontrol_new {int dummy; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_card* snd_card; } ;


 int snd_soc_add_controls (struct snd_card*,int ,struct snd_kcontrol_new const*,unsigned int,int ,struct snd_soc_component*) ;

int snd_soc_add_component_controls(struct snd_soc_component *component,
 const struct snd_kcontrol_new *controls, unsigned int num_controls)
{
 struct snd_card *card = component->card->snd_card;

 return snd_soc_add_controls(card, component->dev, controls,
   num_controls, component->name_prefix, component);
}
