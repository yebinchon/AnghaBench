
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {void* dma_area; int dma_bytes; int channels; } ;



__attribute__((used)) static void *get_dma_ptr(struct snd_pcm_runtime *runtime,
      int channel, unsigned long hwoff)
{
 return runtime->dma_area + hwoff +
  channel * (runtime->dma_bytes / runtime->channels);
}
