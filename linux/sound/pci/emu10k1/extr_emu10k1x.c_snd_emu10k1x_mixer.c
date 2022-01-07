
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct emu10k1x {struct snd_card* card; } ;


 int ENOMEM ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct emu10k1x*) ;
 int snd_emu10k1x_shared_spdif ;
 int snd_emu10k1x_spdif_control ;
 int snd_emu10k1x_spdif_mask_control ;

__attribute__((used)) static int snd_emu10k1x_mixer(struct emu10k1x *emu)
{
 int err;
 struct snd_kcontrol *kctl;
 struct snd_card *card = emu->card;

 if ((kctl = snd_ctl_new1(&snd_emu10k1x_spdif_mask_control, emu)) == ((void*)0))
  return -ENOMEM;
 if ((err = snd_ctl_add(card, kctl)))
  return err;
 if ((kctl = snd_ctl_new1(&snd_emu10k1x_shared_spdif, emu)) == ((void*)0))
  return -ENOMEM;
 if ((err = snd_ctl_add(card, kctl)))
  return err;
 if ((kctl = snd_ctl_new1(&snd_emu10k1x_spdif_control, emu)) == ((void*)0))
  return -ENOMEM;
 if ((err = snd_ctl_add(card, kctl)))
  return err;

 return 0;
}
