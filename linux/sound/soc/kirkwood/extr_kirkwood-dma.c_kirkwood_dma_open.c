
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__ dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct mbus_dram_target_info {int dummy; } ;
struct kirkwood_dma_data {int burst; scalar_t__ io; struct snd_pcm_substream* substream_rec; struct snd_pcm_substream* substream_play; int irq; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 scalar_t__ KIRKWOOD_AUDIO_BUF_MAX ;
 scalar_t__ KIRKWOOD_ERR_MASK ;
 int KIRKWOOD_PLAYBACK_WIN ;
 int KIRKWOOD_RECORD_WIN ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int kirkwood_dma_conf_mbus_windows (scalar_t__,int ,unsigned long,struct mbus_dram_target_info const*) ;
 int kirkwood_dma_irq ;
 int kirkwood_dma_snd_hw ;
 struct kirkwood_dma_data* kirkwood_priv (struct snd_pcm_substream*) ;
 struct mbus_dram_target_info* mv_mbus_dram_info () ;
 int request_irq (int ,int ,int ,char*,struct kirkwood_dma_data*) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,scalar_t__) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int kirkwood_dma_open(struct snd_pcm_substream *substream)
{
 int err;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct kirkwood_dma_data *priv = kirkwood_priv(substream);
 const struct mbus_dram_target_info *dram;
 unsigned long addr;

 snd_soc_set_runtime_hwparams(substream, &kirkwood_dma_snd_hw);


 err = snd_pcm_hw_constraint_minmax(runtime,
   SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
   priv->burst * 2,
   KIRKWOOD_AUDIO_BUF_MAX-1);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_step(runtime, 0,
   SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
   priv->burst);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_step(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
    priv->burst);
 if (err < 0)
  return err;

 if (!priv->substream_play && !priv->substream_rec) {
  err = request_irq(priv->irq, kirkwood_dma_irq, IRQF_SHARED,
      "kirkwood-i2s", priv);
  if (err)
   return -EBUSY;





  writel((unsigned int)-1, priv->io + KIRKWOOD_ERR_MASK);
 }

 dram = mv_mbus_dram_info();
 addr = substream->dma_buffer.addr;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (priv->substream_play)
   return -EBUSY;
  priv->substream_play = substream;
  kirkwood_dma_conf_mbus_windows(priv->io,
   KIRKWOOD_PLAYBACK_WIN, addr, dram);
 } else {
  if (priv->substream_rec)
   return -EBUSY;
  priv->substream_rec = substream;
  kirkwood_dma_conf_mbus_windows(priv->io,
   KIRKWOOD_RECORD_WIN, addr, dram);
 }

 return 0;
}
