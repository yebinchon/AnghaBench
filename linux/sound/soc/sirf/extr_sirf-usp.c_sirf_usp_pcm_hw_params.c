
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct sirf_usp {int daifmt_format; int regmap; } ;


 int EINVAL ;



 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

 int SND_SOC_DAIFMT_FORMAT_MASK ;


 int SND_SOC_DAIFMT_INV_MASK ;

 int USP_I2S_SYNC_CHG ;
 int USP_MODE1 ;
 int USP_RXC_DATA_LEN_MASK ;
 int USP_RXC_DATA_LEN_OFFSET ;
 int USP_RXC_FRAME_LEN_MASK ;
 int USP_RXC_FRAME_LEN_OFFSET ;
 int USP_RXC_SHIFTER_LEN_MASK ;
 int USP_RXC_SHIFTER_LEN_OFFSET ;
 int USP_RXD_ACT_EDGE_FALLING ;
 int USP_RX_FRAME_CTRL ;
 int USP_SINGLE_SYNC_MODE ;
 int USP_TXC_DATA_LEN_MASK ;
 int USP_TXC_DATA_LEN_OFFSET ;
 int USP_TXC_FRAME_LEN_MASK ;
 int USP_TXC_FRAME_LEN_OFFSET ;
 int USP_TXC_SHIFTER_LEN_MASK ;
 int USP_TXC_SHIFTER_LEN_OFFSET ;
 int USP_TXC_SLAVE_CLK_SAMPLE ;
 int USP_TXD_ACT_EDGE_FALLING ;
 int USP_TX_FRAME_CTRL ;
 int dev_err (int ,char*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sirf_usp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int sirf_usp_pcm_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct sirf_usp *usp = snd_soc_dai_get_drvdata(dai);
 u32 data_len, frame_len, shifter_len;

 switch (params_format(params)) {
 case 134:
  data_len = 16;
  frame_len = 16;
  break;
 case 132:
  data_len = 24;
  frame_len = 32;
  break;
 case 133:
  data_len = 24;
  frame_len = 24;
  break;
 default:
  dev_err(dai->dev, "Format unsupported\n");
  return -EINVAL;
 }

 shifter_len = data_len;

 switch (usp->daifmt_format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  regmap_update_bits(usp->regmap, USP_RX_FRAME_CTRL,
   USP_I2S_SYNC_CHG, USP_I2S_SYNC_CHG);
  break;
 case 131:
  regmap_update_bits(usp->regmap, USP_RX_FRAME_CTRL,
   USP_I2S_SYNC_CHG, 0);
  frame_len = data_len * params_channels(params);
  data_len = frame_len;
  break;
 default:
  dev_err(dai->dev, "Only support I2S and DSP_A mode\n");
  return -EINVAL;
 }

 switch (usp->daifmt_format & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 129:
  regmap_update_bits(usp->regmap, USP_MODE1,
   USP_RXD_ACT_EDGE_FALLING | USP_TXD_ACT_EDGE_FALLING,
   USP_RXD_ACT_EDGE_FALLING);
  break;
 default:
  return -EINVAL;
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  regmap_update_bits(usp->regmap, USP_TX_FRAME_CTRL,
   USP_TXC_DATA_LEN_MASK | USP_TXC_FRAME_LEN_MASK
   | USP_TXC_SHIFTER_LEN_MASK | USP_TXC_SLAVE_CLK_SAMPLE,
   ((data_len - 1) << USP_TXC_DATA_LEN_OFFSET)
   | ((frame_len - 1) << USP_TXC_FRAME_LEN_OFFSET)
   | ((shifter_len - 1) << USP_TXC_SHIFTER_LEN_OFFSET)
   | USP_TXC_SLAVE_CLK_SAMPLE);
 else
  regmap_update_bits(usp->regmap, USP_RX_FRAME_CTRL,
   USP_RXC_DATA_LEN_MASK | USP_RXC_FRAME_LEN_MASK
   | USP_RXC_SHIFTER_LEN_MASK | USP_SINGLE_SYNC_MODE,
   ((data_len - 1) << USP_RXC_DATA_LEN_OFFSET)
   | ((frame_len - 1) << USP_RXC_FRAME_LEN_OFFSET)
   | ((shifter_len - 1) << USP_RXC_SHIFTER_LEN_OFFSET)
   | USP_SINGLE_SYNC_MODE);

 return 0;
}
