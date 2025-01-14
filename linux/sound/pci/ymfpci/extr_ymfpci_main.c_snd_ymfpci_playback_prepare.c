
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci_pcm {int use_441_slot; scalar_t__ last_pos; scalar_t__ period_pos; int buffer_size; int period_size; } ;
struct snd_ymfpci {scalar_t__ pcm; int card; TYPE_1__* pcm_mixer; } ;
struct snd_pcm_substream {scalar_t__ pcm; size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int channels; int buffer_size; int period_size; struct snd_ymfpci_pcm* private_data; } ;
struct snd_kcontrol {int id; TYPE_2__* vd; } ;
struct TYPE_4__ {int access; } ;
struct TYPE_3__ {struct snd_kcontrol* ctl; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int snd_ctl_notify (int ,int ,int *) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_pcm_init_voice (struct snd_ymfpci_pcm*,unsigned int,struct snd_pcm_runtime*,int) ;

__attribute__((used)) static int snd_ymfpci_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm = runtime->private_data;
 struct snd_kcontrol *kctl;
 unsigned int nvoice;

 ypcm->period_size = runtime->period_size;
 ypcm->buffer_size = runtime->buffer_size;
 ypcm->period_pos = 0;
 ypcm->last_pos = 0;
 for (nvoice = 0; nvoice < runtime->channels; nvoice++)
  snd_ymfpci_pcm_init_voice(ypcm, nvoice, runtime,
       substream->pcm == chip->pcm);

 if (substream->pcm == chip->pcm && !ypcm->use_441_slot) {
  kctl = chip->pcm_mixer[substream->number].ctl;
  kctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_INFO, &kctl->id);
 }
 return 0;
}
