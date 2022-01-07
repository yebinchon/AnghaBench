
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_trident_voice {int * memblk; } ;
struct TYPE_2__ {scalar_t__ entries; } ;
struct snd_trident {TYPE_1__ tlb; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ENOMEM ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int * snd_trident_alloc_pages (struct snd_trident*,struct snd_pcm_substream*) ;
 int snd_trident_free_pages (struct snd_trident*,int *) ;

__attribute__((used)) static int snd_trident_allocate_pcm_mem(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *hw_params)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 int err;

 if ((err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params))) < 0)
  return err;
 if (trident->tlb.entries) {
  if (err > 0) {
   if (voice->memblk)
    snd_trident_free_pages(trident, voice->memblk);
   voice->memblk = snd_trident_alloc_pages(trident, substream);
   if (voice->memblk == ((void*)0))
    return -ENOMEM;
  }
 }
 return 0;
}
