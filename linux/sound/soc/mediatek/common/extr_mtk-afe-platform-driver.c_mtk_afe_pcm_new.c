
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm {int dummy; } ;
struct mtk_base_afe {int dev; TYPE_1__* mtk_afe_hardware; } ;
struct TYPE_2__ {size_t buffer_bytes_max; } ;


 int AFE_PCM_NAME ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,size_t,size_t) ;
 struct mtk_base_afe* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

int mtk_afe_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 size_t size;
 struct snd_pcm *pcm = rtd->pcm;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, AFE_PCM_NAME);
 struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);

 size = afe->mtk_afe_hardware->buffer_bytes_max;
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           afe->dev, size, size);
 return 0;
}
