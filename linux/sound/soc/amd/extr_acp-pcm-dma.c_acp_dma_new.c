
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int pcm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct audio_drv_data {int asic_type; } ;
struct TYPE_2__ {struct device* parent; } ;



 int DRV_NAME ;
 int MAX_BUFFER ;
 int MIN_BUFFER ;
 int SNDRV_DMA_TYPE_DEV ;
 int ST_MAX_BUFFER ;
 int ST_MIN_BUFFER ;
 struct audio_drv_data* dev_get_drvdata (TYPE_1__*) ;
 int snd_pcm_lib_preallocate_pages_for_all (int ,int ,struct device*,int ,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int acp_dma_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd,
            DRV_NAME);
 struct audio_drv_data *adata = dev_get_drvdata(component->dev);
 struct device *parent = component->dev->parent;

 switch (adata->asic_type) {
 case 128:
  snd_pcm_lib_preallocate_pages_for_all(rtd->pcm,
            SNDRV_DMA_TYPE_DEV,
            parent,
            ST_MIN_BUFFER,
            ST_MAX_BUFFER);
  break;
 default:
  snd_pcm_lib_preallocate_pages_for_all(rtd->pcm,
            SNDRV_DMA_TYPE_DEV,
            parent,
            MIN_BUFFER,
            MAX_BUFFER);
  break;
 }
 return 0;
}
