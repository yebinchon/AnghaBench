
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_info {TYPE_1__* xb_dev; struct xen_snd_front_card_info* card_info; } ;
struct xen_snd_front_card_info {struct snd_card* card; } ;
struct snd_card {int number; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int snd_card_free (struct snd_card*) ;

void xen_snd_front_alsa_fini(struct xen_snd_front_info *front_info)
{
 struct xen_snd_front_card_info *card_info;
 struct snd_card *card;

 card_info = front_info->card_info;
 if (!card_info)
  return;

 card = card_info->card;
 if (!card)
  return;

 dev_dbg(&front_info->xb_dev->dev, "Removing virtual sound card %d\n",
  card->number);
 snd_card_free(card);


 card_info->card = ((void*)0);
}
