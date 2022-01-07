
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int shortname; int mixername; } ;
struct snd_amd7930 {struct snd_card* card; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * amd7930_controls ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_amd7930*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_amd7930_mixer(struct snd_amd7930 *amd)
{
 struct snd_card *card;
 int idx, err;

 if (snd_BUG_ON(!amd || !amd->card))
  return -EINVAL;

 card = amd->card;
 strcpy(card->mixername, card->shortname);

 for (idx = 0; idx < ARRAY_SIZE(amd7930_controls); idx++) {
  if ((err = snd_ctl_add(card,
           snd_ctl_new1(&amd7930_controls[idx], amd))) < 0)
   return err;
 }

 return 0;
}
