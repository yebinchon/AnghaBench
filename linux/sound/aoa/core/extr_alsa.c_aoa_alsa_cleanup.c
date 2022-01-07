
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alsa_card; } ;


 TYPE_1__* aoa_card ;
 int snd_card_free (int ) ;

void aoa_alsa_cleanup(void)
{
 if (aoa_card) {
  snd_card_free(aoa_card->alsa_card);
  aoa_card = ((void*)0);
 }
}
