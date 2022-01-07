
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* pcm; TYPE_1__* card; } ;
struct snd_card {int dev; } ;
struct TYPE_8__ {size_t buffer_bytes_max; } ;
struct TYPE_7__ {TYPE_2__* streams; } ;
struct TYPE_6__ {int substream; } ;
struct TYPE_5__ {struct snd_card* snd_card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 TYPE_4__ axg_fifo_hw ;
 int snd_pcm_lib_preallocate_pages (int ,int ,int ,size_t,size_t) ;

int axg_fifo_pcm_new(struct snd_soc_pcm_runtime *rtd, unsigned int type)
{
 struct snd_card *card = rtd->card->snd_card;
 size_t size = axg_fifo_hw.buffer_bytes_max;

 snd_pcm_lib_preallocate_pages(rtd->pcm->streams[type].substream,
          SNDRV_DMA_TYPE_DEV, card->dev,
          size, size);
 return 0;
}
