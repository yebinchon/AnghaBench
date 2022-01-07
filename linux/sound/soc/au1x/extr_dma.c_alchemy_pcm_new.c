
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_pcm {int dummy; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;

__attribute__((used)) static int alchemy_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_pcm *pcm = rtd->pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
  snd_dma_continuous_data(GFP_KERNEL), 65536, (4096 * 1024) - 1);

 return 0;
}
