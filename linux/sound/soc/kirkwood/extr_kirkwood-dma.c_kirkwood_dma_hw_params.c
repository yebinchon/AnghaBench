
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int kirkwood_dma_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
 runtime->dma_bytes = params_buffer_bytes(params);

 return 0;
}
