
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {struct snd_pcm_substream* substream; int foldback_chan; } ;
struct snd_trident {int dummy; } ;
struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; int private_free; struct snd_trident_voice* private_data; } ;


 int EAGAIN ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_TRIDENT_VOICE_TYPE_PCM ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 struct snd_trident_voice* snd_trident_alloc_voice (struct snd_trident*,int ,int ,int ) ;
 int snd_trident_foldback ;
 int snd_trident_pcm_free_substream ;

__attribute__((used)) static int snd_trident_foldback_open(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_trident_voice *voice;
 struct snd_pcm_runtime *runtime = substream->runtime;

 voice = snd_trident_alloc_voice(trident, SNDRV_TRIDENT_VOICE_TYPE_PCM, 0, 0);
 if (voice == ((void*)0))
  return -EAGAIN;
 voice->foldback_chan = substream->number;
 voice->substream = substream;
 runtime->private_data = voice;
 runtime->private_free = snd_trident_pcm_free_substream;
 runtime->hw = snd_trident_foldback;
 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 64*1024);
 return 0;
}
