
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {int dev; } ;
struct TYPE_2__ {struct snd_card* snd_card; } ;


 int AU1XPSC_BUFFER_MIN_BYTES ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int) ;

__attribute__((used)) static int au1xpsc_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_card *card = rtd->card->snd_card;
 struct snd_pcm *pcm = rtd->pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
  card->dev, AU1XPSC_BUFFER_MIN_BYTES, (4096 * 1024) - 1);

 return 0;
}
