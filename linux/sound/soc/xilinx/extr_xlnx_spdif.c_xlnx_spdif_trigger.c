
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_dev_data {scalar_t__ base; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int stream; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;






 scalar_t__ XSPDIF_CONTROL_REG ;
 int XSPDIF_CORE_ENABLE_MASK ;
 struct spdif_dev_data* dev_get_drvdata (int ) ;
 int readl (scalar_t__) ;
 int rx_stream_detect (struct snd_soc_dai*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlnx_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
         struct snd_soc_dai *dai)
{
 u32 val;
 int ret = 0;
 struct spdif_dev_data *ctx = dev_get_drvdata(dai->dev);

 val = readl(ctx->base + XSPDIF_CONTROL_REG);
 switch (cmd) {
 case 130:
 case 131:
 case 132:
  val |= XSPDIF_CORE_ENABLE_MASK;
  writel(val, ctx->base + XSPDIF_CONTROL_REG);
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   ret = rx_stream_detect(dai);
  break;
 case 129:
 case 128:
 case 133:
  val &= ~XSPDIF_CORE_ENABLE_MASK;
  writel(val, ctx->base + XSPDIF_CONTROL_REG);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
