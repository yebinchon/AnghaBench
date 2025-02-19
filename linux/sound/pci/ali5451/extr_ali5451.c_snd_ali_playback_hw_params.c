
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ali_voice* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_ali_voice {struct snd_ali_voice* extra; struct snd_pcm_substream* substream; } ;
struct snd_ali {int dummy; } ;


 int ENOMEM ;
 int SNDRV_ALI_VOICE_TYPE_PCM ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_buffer_size (struct snd_pcm_hw_params*) ;
 int params_period_size (struct snd_pcm_hw_params*) ;
 struct snd_ali_voice* snd_ali_alloc_voice (struct snd_ali*,int ,int ,int) ;
 int snd_ali_free_voice (struct snd_ali*,struct snd_ali_voice*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_ali* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ali_playback_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *hw_params)
{
 struct snd_ali *codec = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ali_voice *pvoice = runtime->private_data;
 struct snd_ali_voice *evoice = pvoice->extra;
 int err;

 err = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 if (err < 0)
  return err;



 if (params_buffer_size(hw_params) / 2 !=
     params_period_size(hw_params)) {
  if (!evoice) {
   evoice = snd_ali_alloc_voice(codec,
           SNDRV_ALI_VOICE_TYPE_PCM,
           0, -1);
   if (!evoice)
    return -ENOMEM;
   pvoice->extra = evoice;
   evoice->substream = substream;
  }
 } else {
  if (evoice) {
   snd_ali_free_voice(codec, evoice);
   pvoice->extra = evoice = ((void*)0);
  }
 }

 return 0;
}
