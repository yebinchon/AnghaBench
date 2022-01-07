
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int list; struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;


 int list_del (int *) ;
 int snd_soc_unbind_card (struct snd_soc_card*,int) ;

__attribute__((used)) static void snd_soc_component_del_unlocked(struct snd_soc_component *component)
{
 struct snd_soc_card *card = component->card;

 if (card)
  snd_soc_unbind_card(card, 0);

 list_del(&component->list);
}
