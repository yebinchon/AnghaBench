
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct axi_i2s {int regmap; } ;


 unsigned int AXI_I2S_CTRL_RX_EN ;
 unsigned int AXI_I2S_CTRL_TX_EN ;
 int AXI_I2S_REG_CTRL ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;






 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct axi_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axi_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 struct snd_soc_dai *dai)
{
 struct axi_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 unsigned int mask, val;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  mask = AXI_I2S_CTRL_RX_EN;
 else
  mask = AXI_I2S_CTRL_TX_EN;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  val = mask;
  break;
 case 129:
 case 128:
 case 133:
  val = 0;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(i2s->regmap, AXI_I2S_REG_CTRL, mask, val);

 return 0;
}
