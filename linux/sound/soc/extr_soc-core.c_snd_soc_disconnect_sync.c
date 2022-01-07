
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* card; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int snd_card; } ;


 int snd_card_disconnect_sync (int ) ;
 struct snd_soc_component* snd_soc_lookup_component (struct device*,int *) ;

void snd_soc_disconnect_sync(struct device *dev)
{
 struct snd_soc_component *component =
   snd_soc_lookup_component(dev, ((void*)0));

 if (!component || !component->card)
  return;

 snd_card_disconnect_sync(component->card->snd_card);
}
