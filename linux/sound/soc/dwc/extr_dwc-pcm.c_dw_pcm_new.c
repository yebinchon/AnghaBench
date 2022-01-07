
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int pcm; } ;
struct TYPE_2__ {size_t buffer_bytes_max; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 TYPE_1__ dw_pcm_hardware ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (int ,int ,int ,size_t,size_t) ;

__attribute__((used)) static int dw_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 size_t size = dw_pcm_hardware.buffer_bytes_max;

 snd_pcm_lib_preallocate_pages_for_all(rtd->pcm,
   SNDRV_DMA_TYPE_CONTINUOUS,
   snd_dma_continuous_data(GFP_KERNEL), size, size);
 return 0;
}
