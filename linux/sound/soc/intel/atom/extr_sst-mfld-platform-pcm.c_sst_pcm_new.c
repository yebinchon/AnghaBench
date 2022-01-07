
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_3__* driver; } ;
struct snd_pcm {int dummy; } ;
struct TYPE_5__ {scalar_t__ channels_min; } ;
struct TYPE_4__ {scalar_t__ channels_min; } ;
struct TYPE_6__ {TYPE_2__ capture; TYPE_1__ playback; } ;


 int GFP_DMA ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SST_MAX_BUFFER ;
 int SST_MIN_BUFFER ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int ) ;

__attribute__((used)) static int sst_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dai *dai = rtd->cpu_dai;
 struct snd_pcm *pcm = rtd->pcm;

 if (dai->driver->playback.channels_min ||
   dai->driver->capture.channels_min) {
  snd_pcm_lib_preallocate_pages_for_all(pcm,
   SNDRV_DMA_TYPE_CONTINUOUS,
   snd_dma_continuous_data(GFP_DMA),
   SST_MIN_BUFFER, SST_MAX_BUFFER);
 }
 return 0;
}
