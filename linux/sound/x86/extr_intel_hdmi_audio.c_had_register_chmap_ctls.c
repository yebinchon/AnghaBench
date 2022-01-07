
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {int dummy; } ;
struct snd_intelhad {TYPE_2__* chmap; } ;
struct TYPE_4__ {int * chmap; TYPE_1__* kctl; struct snd_intelhad* private_data; } ;
struct TYPE_3__ {int get; int info; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int had_chmap_ctl_get ;
 int had_chmap_ctl_info ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,int ,int *,int ,unsigned long,TYPE_2__**) ;

__attribute__((used)) static int had_register_chmap_ctls(struct snd_intelhad *intelhaddata,
      struct snd_pcm *pcm)
{
 int err;

 err = snd_pcm_add_chmap_ctls(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   ((void*)0), 0, (unsigned long)intelhaddata,
   &intelhaddata->chmap);
 if (err < 0)
  return err;

 intelhaddata->chmap->private_data = intelhaddata;
 intelhaddata->chmap->kctl->info = had_chmap_ctl_info;
 intelhaddata->chmap->kctl->get = had_chmap_ctl_get;
 intelhaddata->chmap->chmap = ((void*)0);
 return 0;
}
