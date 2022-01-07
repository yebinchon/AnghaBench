
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long dma_addr; int buffer_size; } ;
struct kirkwood_dma_data {scalar_t__ io; } ;


 scalar_t__ KIRKWOOD_PLAY_BUF_ADDR ;
 scalar_t__ KIRKWOOD_PLAY_BUF_SIZE ;
 scalar_t__ KIRKWOOD_PLAY_BYTE_INT_COUNT ;
 scalar_t__ KIRKWOOD_REC_BUF_ADDR ;
 scalar_t__ KIRKWOOD_REC_BUF_SIZE ;
 scalar_t__ KIRKWOOD_REC_BYTE_INT_COUNT ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned long frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 struct kirkwood_dma_data* kirkwood_priv (struct snd_pcm_substream*) ;
 unsigned long snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int kirkwood_dma_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct kirkwood_dma_data *priv = kirkwood_priv(substream);
 unsigned long size, count;


 size = frames_to_bytes(runtime, runtime->buffer_size);
 size = (size>>2)-1;
 count = snd_pcm_lib_period_bytes(substream);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  writel(count, priv->io + KIRKWOOD_PLAY_BYTE_INT_COUNT);
  writel(runtime->dma_addr, priv->io + KIRKWOOD_PLAY_BUF_ADDR);
  writel(size, priv->io + KIRKWOOD_PLAY_BUF_SIZE);
 } else {
  writel(count, priv->io + KIRKWOOD_REC_BYTE_INT_COUNT);
  writel(runtime->dma_addr, priv->io + KIRKWOOD_REC_BUF_ADDR);
  writel(size, priv->io + KIRKWOOD_REC_BUF_SIZE);
 }


 return 0;
}
