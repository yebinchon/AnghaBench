
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
struct snd_ice1712 {TYPE_3__ spdif; TYPE_2__* pcm_pro; int card; } ;
struct TYPE_5__ {int device; } ;


 int EIO ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int snd_ice1712_spdif_default ;
 int snd_ice1712_spdif_maskc ;
 int snd_ice1712_spdif_maskp ;
 int snd_ice1712_spdif_stream ;

int snd_ice1712_spdif_build_controls(struct snd_ice1712 *ice)
{
 int err;
 struct snd_kcontrol *kctl;

 if (snd_BUG_ON(!ice->pcm_pro))
  return -EIO;
 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_ice1712_spdif_default, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm_pro->device;
 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_ice1712_spdif_maskc, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm_pro->device;
 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_ice1712_spdif_maskp, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm_pro->device;
 err = snd_ctl_add(ice->card, kctl = snd_ctl_new1(&snd_ice1712_spdif_stream, ice));
 if (err < 0)
  return err;
 kctl->id.device = ice->pcm_pro->device;
 ice->spdif.stream_ctl = kctl;
 return 0;
}
