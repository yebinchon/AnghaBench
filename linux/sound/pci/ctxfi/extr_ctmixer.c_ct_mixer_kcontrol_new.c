
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol_new {int private_value; } ;
struct TYPE_3__ {scalar_t__ iface; int device; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct ct_mixer {TYPE_2__* atc; } ;
struct TYPE_4__ {int card; } ;


 int ENOMEM ;
 int IEC958 ;


 scalar_t__ SNDRV_CTL_ELEM_IFACE_PCM ;
 struct snd_kcontrol** kctls ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,TYPE_2__*) ;

__attribute__((used)) static int
ct_mixer_kcontrol_new(struct ct_mixer *mixer, struct snd_kcontrol_new *new)
{
 struct snd_kcontrol *kctl;
 int err;

 kctl = snd_ctl_new1(new, mixer->atc);
 if (!kctl)
  return -ENOMEM;

 if (SNDRV_CTL_ELEM_IFACE_PCM == kctl->id.iface)
  kctl->id.device = IEC958;

 err = snd_ctl_add(mixer->atc->card, kctl);
 if (err)
  return err;

 switch (new->private_value) {
 case 129:
  kctls[0] = kctl; break;
 case 128:
  kctls[1] = kctl; break;
 default:
  break;
 }

 return 0;
}
