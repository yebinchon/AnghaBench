
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mute; } ;
struct spdif_out_dev {scalar_t__ io_base; TYPE_1__ saved_params; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int SPDIF_OPMODE_AUD_DATA ;
 int SPDIF_OPMODE_MASK ;
 int SPDIF_OPMODE_MUTE_PCM ;
 int SPDIF_OPMODE_OFF ;
 scalar_t__ SPDIF_OUT_CTRL ;
 int SPDIF_STATE_NORMAL ;
 int readl (scalar_t__) ;
 struct spdif_out_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spdif_out_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *dai)
{
 struct spdif_out_dev *host = snd_soc_dai_get_drvdata(dai);
 u32 ctrl;
 int ret = 0;

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return -EINVAL;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
   ctrl = readl(host->io_base + SPDIF_OUT_CTRL);
   ctrl &= ~SPDIF_OPMODE_MASK;
   if (!host->saved_params.mute)
    ctrl |= SPDIF_OPMODE_AUD_DATA |
     SPDIF_STATE_NORMAL;
   else
    ctrl |= SPDIF_OPMODE_MUTE_PCM;
   writel(ctrl, host->io_base + SPDIF_OUT_CTRL);
  break;

 case 129:
 case 128:
 case 133:
  ctrl = readl(host->io_base + SPDIF_OUT_CTRL);
  ctrl &= ~SPDIF_OPMODE_MASK;
  ctrl |= SPDIF_OPMODE_OFF;
  writel(ctrl, host->io_base + SPDIF_OUT_CTRL);
  break;

 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
