
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int pcm; TYPE_1__* card; } ;
struct snd_card {int dev; } ;
struct TYPE_4__ {size_t buffer_bytes_max; } ;
struct TYPE_3__ {struct snd_card* snd_card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int snd_pcm_lib_preallocate_pages_for_all (int ,int ,int ,size_t,size_t) ;
 TYPE_2__ xtfpga_pcm_hardware ;

__attribute__((used)) static int xtfpga_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_card *card = rtd->card->snd_card;
 size_t size = xtfpga_pcm_hardware.buffer_bytes_max;

 snd_pcm_lib_preallocate_pages_for_all(rtd->pcm, SNDRV_DMA_TYPE_DEV,
           card->dev, size, size);
 return 0;
}
