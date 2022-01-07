
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int private_free; } ;
struct snd_card {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dma_coerce_mask_and_coherent (int ,int ) ;
 struct snd_pcm* pxa2xx_ac97_pcm ;
 int pxa2xx_ac97_pcm_ops ;
 int pxa2xx_pcm_free_dma_buffers ;
 int pxa2xx_pcm_preallocate_dma_buffer (struct snd_pcm*,int) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int,int *) ;

__attribute__((used)) static int pxa2xx_ac97_pcm_new(struct snd_card *card)
{
 struct snd_pcm *pcm;
 int stream, ret;

 ret = snd_pcm_new(card, "PXA2xx-PCM", 0, 1, 1, &pcm);
 if (ret)
  goto out;

 pcm->private_free = pxa2xx_pcm_free_dma_buffers;

 ret = dma_coerce_mask_and_coherent(card->dev, DMA_BIT_MASK(32));
 if (ret)
  goto out;

 stream = SNDRV_PCM_STREAM_PLAYBACK;
 snd_pcm_set_ops(pcm, stream, &pxa2xx_ac97_pcm_ops);
 ret = pxa2xx_pcm_preallocate_dma_buffer(pcm, stream);
 if (ret)
  goto out;

 stream = SNDRV_PCM_STREAM_CAPTURE;
 snd_pcm_set_ops(pcm, stream, &pxa2xx_ac97_pcm_ops);
 ret = pxa2xx_pcm_preallocate_dma_buffer(pcm, stream);
 if (ret)
  goto out;

 pxa2xx_ac97_pcm = pcm;
 ret = 0;

 out:
 return ret;
}
