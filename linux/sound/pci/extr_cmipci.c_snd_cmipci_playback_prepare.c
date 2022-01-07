
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cmipci {int dig_pcm_status; int * channel; scalar_t__ can_ac3_hw; } ;
struct TYPE_2__ {int rate; scalar_t__ format; int channels; } ;


 size_t CM_CH_PLAY ;
 int IEC958_AES0_NONAUDIO ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 int setup_spdif_playback (struct cmipci*,struct snd_pcm_substream*,int,int) ;
 int snd_cmipci_pcm_prepare (struct cmipci*,int *,struct snd_pcm_substream*) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_playback_prepare(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 int rate = substream->runtime->rate;
 int err, do_spdif, do_ac3 = 0;

 do_spdif = (rate >= 44100 && rate <= 96000 &&
      substream->runtime->format == SNDRV_PCM_FORMAT_S16_LE &&
      substream->runtime->channels == 2);
 if (do_spdif && cm->can_ac3_hw)
  do_ac3 = cm->dig_pcm_status & IEC958_AES0_NONAUDIO;
 if ((err = setup_spdif_playback(cm, substream, do_spdif, do_ac3)) < 0)
  return err;
 return snd_cmipci_pcm_prepare(cm, &cm->channel[CM_CH_PLAY], substream);
}
