
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {struct snd_card* card; } ;
struct snd_kcontrol {int private_free; } ;
struct snd_card {int mixername; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct sonicvibes*) ;
 int * snd_sonicvibes_controls ;
 int snd_sonicvibes_master_free ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_sonicvibes_mixer(struct sonicvibes *sonic)
{
 struct snd_card *card;
 struct snd_kcontrol *kctl;
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!sonic || !sonic->card))
  return -EINVAL;
 card = sonic->card;
 strcpy(card->mixername, "S3 SonicVibes");

 for (idx = 0; idx < ARRAY_SIZE(snd_sonicvibes_controls); idx++) {
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_sonicvibes_controls[idx], sonic))) < 0)
   return err;
  switch (idx) {
  case 0:
  case 1: kctl->private_free = snd_sonicvibes_master_free; break;
  }
 }
 return 0;
}
