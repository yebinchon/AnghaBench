
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int dma_bytes; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int snd_nm256_pcm_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *hw_params)
{

 substream->runtime->dma_bytes = params_buffer_bytes(hw_params);
 return 0;
}
