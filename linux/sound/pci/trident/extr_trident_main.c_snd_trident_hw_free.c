
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident_voice {struct snd_trident_voice* extra; int * memblk; } ;
struct TYPE_2__ {scalar_t__ entries; } ;
struct snd_trident {TYPE_1__ tlb; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_trident_free_pages (struct snd_trident*,int *) ;
 int snd_trident_free_voice (struct snd_trident*,struct snd_trident_voice*) ;

__attribute__((used)) static int snd_trident_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 struct snd_trident_voice *evoice = voice ? voice->extra : ((void*)0);

 if (trident->tlb.entries) {
  if (voice && voice->memblk) {
   snd_trident_free_pages(trident, voice->memblk);
   voice->memblk = ((void*)0);
  }
 }
 snd_pcm_lib_free_pages(substream);
 if (evoice != ((void*)0)) {
  snd_trident_free_voice(trident, evoice);
  voice->extra = ((void*)0);
 }
 return 0;
}
