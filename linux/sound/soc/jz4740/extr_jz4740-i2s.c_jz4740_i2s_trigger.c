
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct jz4740_i2s {int dummy; } ;


 int EINVAL ;
 int JZ_AIC_CTRL_ENABLE_CAPTURE ;
 int JZ_AIC_CTRL_ENABLE_PLAYBACK ;
 int JZ_AIC_CTRL_ENABLE_RX_DMA ;
 int JZ_AIC_CTRL_ENABLE_TX_DMA ;
 int JZ_REG_AIC_CTRL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int jz4740_i2s_read (struct jz4740_i2s*,int ) ;
 int jz4740_i2s_write (struct jz4740_i2s*,int ,int) ;
 struct jz4740_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int jz4740_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 struct snd_soc_dai *dai)
{
 struct jz4740_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 uint32_t ctrl;
 uint32_t mask;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  mask = JZ_AIC_CTRL_ENABLE_PLAYBACK | JZ_AIC_CTRL_ENABLE_TX_DMA;
 else
  mask = JZ_AIC_CTRL_ENABLE_CAPTURE | JZ_AIC_CTRL_ENABLE_RX_DMA;

 ctrl = jz4740_i2s_read(i2s, JZ_REG_AIC_CTRL);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  ctrl |= mask;
  break;
 case 129:
 case 128:
 case 133:
  ctrl &= ~mask;
  break;
 default:
  return -EINVAL;
 }

 jz4740_i2s_write(i2s, JZ_REG_AIC_CTRL, ctrl);

 return 0;
}
