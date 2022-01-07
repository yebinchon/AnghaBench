
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int mixername; } ;
struct snd_ad1816a {struct snd_card* card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ad1816a_chip_id (struct snd_ad1816a*) ;
 int * snd_ad1816a_controls ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_ad1816a*) ;
 int strcpy (int ,int ) ;

int snd_ad1816a_mixer(struct snd_ad1816a *chip)
{
 struct snd_card *card;
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!chip || !chip->card))
  return -EINVAL;

 card = chip->card;

 strcpy(card->mixername, snd_ad1816a_chip_id(chip));

 for (idx = 0; idx < ARRAY_SIZE(snd_ad1816a_controls); idx++) {
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_ad1816a_controls[idx], chip))) < 0)
   return err;
 }
 return 0;
}
