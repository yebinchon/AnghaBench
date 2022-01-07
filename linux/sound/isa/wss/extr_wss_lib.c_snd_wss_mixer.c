
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wss {int hardware; TYPE_1__* pcm; struct snd_card* card; } ;
struct snd_card {int mixername; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int WSS_HW_AD1848_MASK ;
 int WSS_HW_OPTI93X ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_wss*) ;
 int * snd_wss_controls ;
 int strcpy (int ,int ) ;

int snd_wss_mixer(struct snd_wss *chip)
{
 struct snd_card *card;
 unsigned int idx;
 int err;
 int count = ARRAY_SIZE(snd_wss_controls);

 if (snd_BUG_ON(!chip || !chip->pcm))
  return -EINVAL;

 card = chip->card;

 strcpy(card->mixername, chip->pcm->name);


 if (chip->hardware & WSS_HW_AD1848_MASK)
  count = 11;

 else if (chip->hardware == WSS_HW_OPTI93X)
  count = 9;

 for (idx = 0; idx < count; idx++) {
  err = snd_ctl_add(card,
    snd_ctl_new1(&snd_wss_controls[idx],
          chip));
  if (err < 0)
   return err;
 }
 return 0;
}
