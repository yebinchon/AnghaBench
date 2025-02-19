
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_hardware {int dummy; } ;
struct snd_pcm_runtime {struct snd_pcm_hardware hw; int private_free; struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {struct snd_pcm_substream* substream; } ;
struct snd_ali {int dummy; } ;


 int EAGAIN ;
 int SNDRV_ALI_VOICE_TYPE_PCM ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 struct snd_ali_voice* snd_ali_alloc_voice (struct snd_ali*,int ,int,int) ;
 int snd_ali_pcm_free_substream ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_ali* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ali_open(struct snd_pcm_substream *substream, int rec,
   int channel, struct snd_pcm_hardware *phw)
{
 struct snd_ali *codec = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ali_voice *pvoice;

 pvoice = snd_ali_alloc_voice(codec, SNDRV_ALI_VOICE_TYPE_PCM, rec,
         channel);
 if (!pvoice)
  return -EAGAIN;

 pvoice->substream = substream;
 runtime->private_data = pvoice;
 runtime->private_free = snd_ali_pcm_free_substream;

 runtime->hw = *phw;
 snd_pcm_set_sync(substream);
 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
         0, 64*1024);
 return 0;
}
