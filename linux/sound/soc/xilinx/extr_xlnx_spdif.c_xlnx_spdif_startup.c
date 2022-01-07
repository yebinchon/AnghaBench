
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_dev_data {scalar_t__ base; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int XSPDIF_CH_STS_MASK ;
 scalar_t__ XSPDIF_CONTROL_REG ;
 int XSPDIF_FIFO_FLUSH_MASK ;
 int XSPDIF_GLOBAL_IRQ_ENABLE ;
 scalar_t__ XSPDIF_GLOBAL_IRQ_ENABLE_REG ;
 scalar_t__ XSPDIF_IRQ_ENABLE_REG ;
 struct spdif_dev_data* dev_get_drvdata (int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlnx_spdif_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 u32 val;
 struct spdif_dev_data *ctx = dev_get_drvdata(dai->dev);

 val = readl(ctx->base + XSPDIF_CONTROL_REG);
 val |= XSPDIF_FIFO_FLUSH_MASK;
 writel(val, ctx->base + XSPDIF_CONTROL_REG);

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
  writel(XSPDIF_CH_STS_MASK,
         ctx->base + XSPDIF_IRQ_ENABLE_REG);
  writel(XSPDIF_GLOBAL_IRQ_ENABLE,
         ctx->base + XSPDIF_GLOBAL_IRQ_ENABLE_REG);
 }

 return 0;
}
