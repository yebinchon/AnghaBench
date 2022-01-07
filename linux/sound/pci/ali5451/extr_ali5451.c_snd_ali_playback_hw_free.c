
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {struct snd_ali_voice* extra; } ;
struct snd_ali {int dummy; } ;


 int snd_ali_free_voice (struct snd_ali*,struct snd_ali_voice*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_ali* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ali_playback_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_ali *codec = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ali_voice *pvoice = runtime->private_data;
 struct snd_ali_voice *evoice = pvoice ? pvoice->extra : ((void*)0);

 snd_pcm_lib_free_pages(substream);
 if (evoice) {
  snd_ali_free_voice(codec, evoice);
  pvoice->extra = ((void*)0);
 }
 return 0;
}
