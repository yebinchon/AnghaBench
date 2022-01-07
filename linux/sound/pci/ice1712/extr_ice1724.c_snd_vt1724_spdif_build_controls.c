
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_6__ {struct snd_kcontrol* stream_ctl; } ;
struct snd_ice1712 {TYPE_3__ spdif; TYPE_2__* pcm; int card; int own_routing; } ;
struct TYPE_5__ {int device; } ;


 int EIO ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int snd_vt1724_mixer_pro_spdif_route ;
 int snd_vt1724_spdif_default ;
 int snd_vt1724_spdif_maskc ;
 int snd_vt1724_spdif_maskp ;
 int snd_vt1724_spdif_stream ;
 int snd_vt1724_spdif_switch ;

__attribute__((used)) static int snd_vt1724_spdif_build_controls(struct snd_ice1712 *ice)
{
 int err;
 struct snd_kcontrol *kctl;

 if (snd_BUG_ON(!ice->pcm))
  return -EIO;

 if (!ice->own_routing) {
  err = snd_ctl_add(ice->card,
   snd_ctl_new1(&snd_vt1724_mixer_pro_spdif_route, ice));
  if (err < 0)
   return err;
 }

 err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_vt1724_spdif_switch, ice));
 if (err < 0)
  return err;

 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_vt1724_spdif_default, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm->device;
 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_vt1724_spdif_maskc, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm->device;
 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_vt1724_spdif_maskp, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm->device;







 return 0;
}
