
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ymfpci_voice {TYPE_1__* bank; } ;
struct snd_ymfpci_pcm {scalar_t__ running; struct snd_ymfpci_voice** voices; } ;
struct snd_ymfpci {size_t active_bank; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int start; } ;


 int le32_to_cpu (int ) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ymfpci_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm = runtime->private_data;
 struct snd_ymfpci_voice *voice = ypcm->voices[0];

 if (!(ypcm->running && voice))
  return 0;
 return le32_to_cpu(voice->bank[chip->active_bank].start);
}
