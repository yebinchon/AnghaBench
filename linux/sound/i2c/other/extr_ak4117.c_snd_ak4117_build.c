
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int number; TYPE_1__* pcm; } ;
struct TYPE_4__ {int subdevice; int device; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct ak4117 {struct snd_kcontrol** kctls; int card; struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {int device; } ;


 unsigned int AK4117_CONTROLS ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ snd_BUG_ON (int) ;
 int * snd_ak4117_iec958_controls ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct ak4117*) ;

int snd_ak4117_build(struct ak4117 *ak4117, struct snd_pcm_substream *cap_substream)
{
 struct snd_kcontrol *kctl;
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!cap_substream))
  return -EINVAL;
 ak4117->substream = cap_substream;
 for (idx = 0; idx < AK4117_CONTROLS; idx++) {
  kctl = snd_ctl_new1(&snd_ak4117_iec958_controls[idx], ak4117);
  if (kctl == ((void*)0))
   return -ENOMEM;
  kctl->id.device = cap_substream->pcm->device;
  kctl->id.subdevice = cap_substream->number;
  err = snd_ctl_add(ak4117->card, kctl);
  if (err < 0)
   return err;
  ak4117->kctls[idx] = kctl;
 }
 return 0;
}
