
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_chmap {struct snd_kcontrol* kctl; struct hdac_chmap* private_data; } ;
struct snd_pcm {int dummy; } ;
struct TYPE_4__ {int c; } ;
struct snd_kcontrol {int count; TYPE_2__ tlv; int put; int get; int info; TYPE_1__* vd; } ;
struct hdac_chmap {int dummy; } ;
struct TYPE_3__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_WRITE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int hdmi_chmap_ctl_get ;
 int hdmi_chmap_ctl_info ;
 int hdmi_chmap_ctl_put ;
 int hdmi_chmap_ctl_tlv ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,int ,int *,int ,int,struct snd_pcm_chmap**) ;

int snd_hdac_add_chmap_ctls(struct snd_pcm *pcm, int pcm_idx,
    struct hdac_chmap *hchmap)
{
 struct snd_pcm_chmap *chmap;
 struct snd_kcontrol *kctl;
 int err, i;

 err = snd_pcm_add_chmap_ctls(pcm,
         SNDRV_PCM_STREAM_PLAYBACK,
         ((void*)0), 0, pcm_idx, &chmap);
 if (err < 0)
  return err;

 chmap->private_data = hchmap;
 kctl = chmap->kctl;
 for (i = 0; i < kctl->count; i++)
  kctl->vd[i].access |= SNDRV_CTL_ELEM_ACCESS_WRITE;
 kctl->info = hdmi_chmap_ctl_info;
 kctl->get = hdmi_chmap_ctl_get;
 kctl->put = hdmi_chmap_ctl_put;
 kctl->tlv.c = hdmi_chmap_ctl_tlv;

 return 0;
}
