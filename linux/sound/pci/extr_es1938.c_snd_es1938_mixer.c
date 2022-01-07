
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {void* private_free; } ;
struct snd_card {int mixername; } ;
struct es1938 {struct snd_kcontrol* hw_switch; struct snd_kcontrol* hw_volume; struct snd_kcontrol* master_switch; struct snd_kcontrol* master_volume; struct snd_card* card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct es1938*) ;
 int * snd_es1938_controls ;
 void* snd_es1938_hwv_free ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_es1938_mixer(struct es1938 *chip)
{
 struct snd_card *card;
 unsigned int idx;
 int err;

 card = chip->card;

 strcpy(card->mixername, "ESS Solo-1");

 for (idx = 0; idx < ARRAY_SIZE(snd_es1938_controls); idx++) {
  struct snd_kcontrol *kctl;
  kctl = snd_ctl_new1(&snd_es1938_controls[idx], chip);
  switch (idx) {
   case 0:
    chip->master_volume = kctl;
    kctl->private_free = snd_es1938_hwv_free;
    break;
   case 1:
    chip->master_switch = kctl;
    kctl->private_free = snd_es1938_hwv_free;
    break;
   case 2:
    chip->hw_volume = kctl;
    kctl->private_free = snd_es1938_hwv_free;
    break;
   case 3:
    chip->hw_switch = kctl;
    kctl->private_free = snd_es1938_hwv_free;
    break;
   }
  if ((err = snd_ctl_add(card, kctl)) < 0)
   return err;
 }
 return 0;
}
