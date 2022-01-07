
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int format; } ;
struct spdif_in_dev {int clk; int (* reset_perip ) () ;scalar_t__ io_base; TYPE_1__ saved_params; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;






 scalar_t__ SPDIF_IN_CTRL ;
 int SPDIF_IN_ENB ;
 scalar_t__ SPDIF_IN_IRQ_MASK ;
 int SPDIF_IN_SAMPLE ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readl (scalar_t__) ;
 struct spdif_in_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spdif_in_configure (struct spdif_in_dev*) ;
 int spdif_in_format (struct spdif_in_dev*,int ) ;
 int stub1 () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spdif_in_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *dai)
{
 struct spdif_in_dev *host = snd_soc_dai_get_drvdata(dai);
 u32 ctrl;
 int ret = 0;

 if (substream->stream != SNDRV_PCM_STREAM_CAPTURE)
  return -EINVAL;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  clk_enable(host->clk);
  spdif_in_configure(host);
  spdif_in_format(host, host->saved_params.format);

  ctrl = readl(host->io_base + SPDIF_IN_CTRL);
  ctrl |= SPDIF_IN_SAMPLE | SPDIF_IN_ENB;
  writel(ctrl, host->io_base + SPDIF_IN_CTRL);
  writel(0xF, host->io_base + SPDIF_IN_IRQ_MASK);
  break;

 case 129:
 case 128:
 case 133:
  ctrl = readl(host->io_base + SPDIF_IN_CTRL);
  ctrl &= ~(SPDIF_IN_SAMPLE | SPDIF_IN_ENB);
  writel(ctrl, host->io_base + SPDIF_IN_CTRL);
  writel(0x0, host->io_base + SPDIF_IN_IRQ_MASK);

  if (host->reset_perip)
   host->reset_perip();
  clk_disable(host->clk);
  break;

 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
