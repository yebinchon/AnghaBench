
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* card; int pcm; } ;
struct TYPE_4__ {TYPE_1__* snd_card; } ;
struct TYPE_3__ {int dev; } ;


 int PREALLOC_BUFFER ;
 int PREALLOC_BUFFER_MAX ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_pcm_lib_preallocate_pages_for_all (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int fsi_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 snd_pcm_lib_preallocate_pages_for_all(
  rtd->pcm,
  SNDRV_DMA_TYPE_DEV,
  rtd->card->snd_card->dev,
  PREALLOC_BUFFER, PREALLOC_BUFFER_MAX);
 return 0;
}
