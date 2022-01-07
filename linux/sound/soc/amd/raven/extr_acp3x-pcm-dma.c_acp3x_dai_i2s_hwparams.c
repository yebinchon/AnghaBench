
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct i2s_stream_instance {int xfer_resolution; scalar_t__ acp3x_base; } ;
struct TYPE_2__ {struct i2s_stream_instance* private_data; } ;


 int EINVAL ;





 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ mmACP_BTTDM_IRER ;
 scalar_t__ mmACP_BTTDM_ITER ;
 int params_format (struct snd_pcm_hw_params*) ;
 int rv_readl (scalar_t__) ;
 int rv_writel (int,scalar_t__) ;

__attribute__((used)) static int acp3x_dai_i2s_hwparams(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 u32 val = 0;
 struct i2s_stream_instance *rtd = substream->runtime->private_data;

 switch (params_format(params)) {
 case 128:
 case 129:
  rtd->xfer_resolution = 0x0;
  break;
 case 132:
  rtd->xfer_resolution = 0x02;
  break;
 case 131:
  rtd->xfer_resolution = 0x04;
  break;
 case 130:
  rtd->xfer_resolution = 0x05;
  break;
 default:
  return -EINVAL;
 }
 val = rv_readl(rtd->acp3x_base + mmACP_BTTDM_ITER);
 val = val | (rtd->xfer_resolution << 3);
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  rv_writel(val, rtd->acp3x_base + mmACP_BTTDM_ITER);
 else
  rv_writel(val, rtd->acp3x_base + mmACP_BTTDM_IRER);

 return 0;
}
