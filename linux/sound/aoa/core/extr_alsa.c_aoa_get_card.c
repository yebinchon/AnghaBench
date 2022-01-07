
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_card* alsa_card; } ;


 TYPE_1__* aoa_card ;

struct snd_card *aoa_get_card(void)
{
 if (aoa_card)
  return aoa_card->alsa_card;
 return ((void*)0);
}
