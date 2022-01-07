
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int number; TYPE_1__* pcm; } ;
struct TYPE_4__ {int subdevice; int device; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct ak4113 {int work; struct snd_kcontrol** kctls; int card; struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {int device; } ;


 unsigned int AK4113_CONTROLS ;
 int EINVAL ;
 int ENOMEM ;
 int HZ ;
 int schedule_delayed_work (int *,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int * snd_ak4113_iec958_controls ;
 int snd_ak4113_proc_init (struct ak4113*) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct ak4113*) ;

int snd_ak4113_build(struct ak4113 *ak4113,
  struct snd_pcm_substream *cap_substream)
{
 struct snd_kcontrol *kctl;
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!cap_substream))
  return -EINVAL;
 ak4113->substream = cap_substream;
 for (idx = 0; idx < AK4113_CONTROLS; idx++) {
  kctl = snd_ctl_new1(&snd_ak4113_iec958_controls[idx], ak4113);
  if (kctl == ((void*)0))
   return -ENOMEM;
  kctl->id.device = cap_substream->pcm->device;
  kctl->id.subdevice = cap_substream->number;
  err = snd_ctl_add(ak4113->card, kctl);
  if (err < 0)
   return err;
  ak4113->kctls[idx] = kctl;
 }
 snd_ak4113_proc_init(ak4113);

 schedule_delayed_work(&ak4113->work, HZ / 10);
 return 0;
}
