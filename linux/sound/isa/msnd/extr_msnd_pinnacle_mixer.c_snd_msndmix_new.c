
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {int mixer_lock; } ;
struct snd_card {int mixername; struct snd_msnd* private_data; } ;


 unsigned int ARRAY_SIZE (scalar_t__) ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (scalar_t__,struct snd_msnd*) ;
 scalar_t__ snd_msnd_controls ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;

int snd_msndmix_new(struct snd_card *card)
{
 struct snd_msnd *chip = card->private_data;
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!chip))
  return -EINVAL;
 spin_lock_init(&chip->mixer_lock);
 strcpy(card->mixername, "MSND Pinnacle Mixer");

 for (idx = 0; idx < ARRAY_SIZE(snd_msnd_controls); idx++) {
  err = snd_ctl_add(card,
      snd_ctl_new1(snd_msnd_controls + idx, chip));
  if (err < 0)
   return err;
 }

 return 0;
}
