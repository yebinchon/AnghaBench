
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ymfpci_pcm {size_t capture_bank_number; int shift; int running; } ;
struct snd_ymfpci {size_t active_bank; TYPE_1__*** bank_capture; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int start; } ;


 int le32_to_cpu (int ) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ymfpci_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm = runtime->private_data;

 if (!ypcm->running)
  return 0;
 return le32_to_cpu(chip->bank_capture[ypcm->capture_bank_number][chip->active_bank]->start) >> ypcm->shift;
}
