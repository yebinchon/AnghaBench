
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dev; struct snd_card* snd_card; } ;
struct snd_kcontrol_new {int dummy; } ;
struct snd_card {int dummy; } ;


 int snd_soc_add_controls (struct snd_card*,int ,struct snd_kcontrol_new const*,int,int *,struct snd_soc_card*) ;

int snd_soc_add_card_controls(struct snd_soc_card *soc_card,
 const struct snd_kcontrol_new *controls, int num_controls)
{
 struct snd_card *card = soc_card->snd_card;

 return snd_soc_add_controls(card, soc_card->dev, controls, num_controls,
   ((void*)0), soc_card);
}
