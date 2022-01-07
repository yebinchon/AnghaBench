
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_dummy {int iobox; struct snd_kcontrol* cd_switch_ctl; struct snd_kcontrol* cd_volume_ctl; int mixer_lock; struct snd_card* card; } ;
struct snd_card {int mixername; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_dummy*) ;
 int * snd_dummy_controls ;
 int spin_lock_init (int *) ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_card_dummy_new_mixer(struct snd_dummy *dummy)
{
 struct snd_card *card = dummy->card;
 struct snd_kcontrol *kcontrol;
 unsigned int idx;
 int err;

 spin_lock_init(&dummy->mixer_lock);
 strcpy(card->mixername, "Dummy Mixer");
 dummy->iobox = 1;

 for (idx = 0; idx < ARRAY_SIZE(snd_dummy_controls); idx++) {
  kcontrol = snd_ctl_new1(&snd_dummy_controls[idx], dummy);
  err = snd_ctl_add(card, kcontrol);
  if (err < 0)
   return err;
  if (!strcmp(kcontrol->id.name, "CD Volume"))
   dummy->cd_volume_ctl = kcontrol;
  else if (!strcmp(kcontrol->id.name, "CD Capture Switch"))
   dummy->cd_switch_ctl = kcontrol;

 }
 return 0;
}
