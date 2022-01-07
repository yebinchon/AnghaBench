
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ ss_channels; int hw_rev; struct snd_kcontrol* spdif_ctl; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ RME9652_NCHANNELS ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_rme9652*) ;
 int snd_rme9652_adat1_input ;
 int snd_rme9652_adat3_check ;
 int * snd_rme9652_controls ;

__attribute__((used)) static int snd_rme9652_create_controls(struct snd_card *card, struct snd_rme9652 *rme9652)
{
 unsigned int idx;
 int err;
 struct snd_kcontrol *kctl;

 for (idx = 0; idx < ARRAY_SIZE(snd_rme9652_controls); idx++) {
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_rme9652_controls[idx], rme9652))) < 0)
   return err;
  if (idx == 1)
   rme9652->spdif_ctl = kctl;
 }

 if (rme9652->ss_channels == RME9652_NCHANNELS)
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_rme9652_adat3_check, rme9652))) < 0)
   return err;

 if (rme9652->hw_rev >= 15)
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_rme9652_adat1_input, rme9652))) < 0)
   return err;

 return 0;
}
