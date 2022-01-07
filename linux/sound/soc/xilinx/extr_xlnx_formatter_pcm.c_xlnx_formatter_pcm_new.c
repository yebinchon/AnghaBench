
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int pcm; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int buffer_bytes_max; } ;


 int DRV_NAME ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_pcm_lib_preallocate_pages_for_all (int ,int ,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 TYPE_1__ xlnx_pcm_hardware ;

__attribute__((used)) static int xlnx_formatter_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd,
            DRV_NAME);
 snd_pcm_lib_preallocate_pages_for_all(rtd->pcm,
   SNDRV_DMA_TYPE_DEV, component->dev,
   xlnx_pcm_hardware.buffer_bytes_max,
   xlnx_pcm_hardware.buffer_bytes_max);
 return 0;
}
