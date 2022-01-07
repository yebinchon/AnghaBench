
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int number; TYPE_1__* pcm; } ;
struct TYPE_4__ {int subdevice; int device; int name; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct ak4114 {int work; struct snd_kcontrol** kctls; int card; struct snd_pcm_substream* capture_substream; struct snd_pcm_substream* playback_substream; } ;
struct TYPE_3__ {int device; } ;


 unsigned int AK4114_CONTROLS ;
 int EINVAL ;
 int ENOMEM ;
 int HZ ;
 int schedule_delayed_work (int *,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int * snd_ak4114_iec958_controls ;
 int snd_ak4114_proc_init (struct ak4114*) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 int snd_ctl_free_one (struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct ak4114*) ;
 scalar_t__ strstr (int ,char*) ;

int snd_ak4114_build(struct ak4114 *ak4114,
       struct snd_pcm_substream *ply_substream,
       struct snd_pcm_substream *cap_substream)
{
 struct snd_kcontrol *kctl;
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!cap_substream))
  return -EINVAL;
 ak4114->playback_substream = ply_substream;
 ak4114->capture_substream = cap_substream;
 for (idx = 0; idx < AK4114_CONTROLS; idx++) {
  kctl = snd_ctl_new1(&snd_ak4114_iec958_controls[idx], ak4114);
  if (kctl == ((void*)0))
   return -ENOMEM;
  if (strstr(kctl->id.name, "Playback")) {
   if (ply_substream == ((void*)0)) {
    snd_ctl_free_one(kctl);
    ak4114->kctls[idx] = ((void*)0);
    continue;
   }
   kctl->id.device = ply_substream->pcm->device;
   kctl->id.subdevice = ply_substream->number;
  } else {
   kctl->id.device = cap_substream->pcm->device;
   kctl->id.subdevice = cap_substream->number;
  }
  err = snd_ctl_add(ak4114->card, kctl);
  if (err < 0)
   return err;
  ak4114->kctls[idx] = kctl;
 }
 snd_ak4114_proc_init(ak4114);

 schedule_delayed_work(&ak4114->work, HZ / 10);
 return 0;
}
