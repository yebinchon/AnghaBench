
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; int dma_buffer; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int dma_bytes; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int uniphier_aiodma_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
 substream->runtime->dma_bytes = params_buffer_bytes(params);

 return 0;
}
