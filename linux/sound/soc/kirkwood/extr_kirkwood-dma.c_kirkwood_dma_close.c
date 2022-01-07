
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct kirkwood_dma_data {int irq; scalar_t__ io; int * substream_rec; int * substream_play; } ;


 scalar_t__ KIRKWOOD_ERR_MASK ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int free_irq (int ,struct kirkwood_dma_data*) ;
 struct kirkwood_dma_data* kirkwood_priv (struct snd_pcm_substream*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int kirkwood_dma_close(struct snd_pcm_substream *substream)
{
 struct kirkwood_dma_data *priv = kirkwood_priv(substream);

 if (!priv)
  return 0;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  priv->substream_play = ((void*)0);
 else
  priv->substream_rec = ((void*)0);

 if (!priv->substream_play && !priv->substream_rec) {
  writel(0, priv->io + KIRKWOOD_ERR_MASK);
  free_irq(priv->irq, priv);
 }

 return 0;
}
