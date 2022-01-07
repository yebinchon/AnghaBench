
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_i2s {int regmap; int clk_i2s; } ;
struct snd_soc_dai {struct device* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;



 int TEGRA20_I2S_CTRL ;
 unsigned int TEGRA20_I2S_CTRL_BIT_SIZE_16 ;
 unsigned int TEGRA20_I2S_CTRL_BIT_SIZE_24 ;
 unsigned int TEGRA20_I2S_CTRL_BIT_SIZE_32 ;
 unsigned int TEGRA20_I2S_CTRL_BIT_SIZE_MASK ;
 unsigned int TEGRA20_I2S_CTRL_FIFO_FORMAT_MASK ;
 unsigned int TEGRA20_I2S_CTRL_FIFO_FORMAT_PACKED ;
 int TEGRA20_I2S_FIFO_SCR ;
 unsigned int TEGRA20_I2S_FIFO_SCR_FIFO1_ATN_LVL_FOUR_SLOTS ;
 unsigned int TEGRA20_I2S_FIFO_SCR_FIFO2_ATN_LVL_FOUR_SLOTS ;
 int TEGRA20_I2S_TIMING ;
 int TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_MASK_US ;
 int TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_SHIFT ;
 unsigned int TEGRA20_I2S_TIMING_NON_SYM_ENABLE ;
 int clk_set_rate (int ,int) ;
 int dev_err (struct device*,char*,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct tegra20_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int tegra20_i2s_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct device *dev = dai->dev;
 struct tegra20_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 unsigned int mask, val;
 int ret, sample_size, srate, i2sclock, bitcnt;

 mask = TEGRA20_I2S_CTRL_BIT_SIZE_MASK;
 switch (params_format(params)) {
 case 130:
  val = TEGRA20_I2S_CTRL_BIT_SIZE_16;
  sample_size = 16;
  break;
 case 129:
  val = TEGRA20_I2S_CTRL_BIT_SIZE_24;
  sample_size = 24;
  break;
 case 128:
  val = TEGRA20_I2S_CTRL_BIT_SIZE_32;
  sample_size = 32;
  break;
 default:
  return -EINVAL;
 }

 mask |= TEGRA20_I2S_CTRL_FIFO_FORMAT_MASK;
 val |= TEGRA20_I2S_CTRL_FIFO_FORMAT_PACKED;

 regmap_update_bits(i2s->regmap, TEGRA20_I2S_CTRL, mask, val);

 srate = params_rate(params);


 i2sclock = srate * params_channels(params) * sample_size * 2;

 ret = clk_set_rate(i2s->clk_i2s, i2sclock);
 if (ret) {
  dev_err(dev, "Can't set I2S clock rate: %d\n", ret);
  return ret;
 }

 bitcnt = (i2sclock / (2 * srate)) - 1;
 if (bitcnt < 0 || bitcnt > TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_MASK_US)
  return -EINVAL;
 val = bitcnt << TEGRA20_I2S_TIMING_CHANNEL_BIT_COUNT_SHIFT;

 if (i2sclock % (2 * srate))
  val |= TEGRA20_I2S_TIMING_NON_SYM_ENABLE;

 regmap_write(i2s->regmap, TEGRA20_I2S_TIMING, val);

 regmap_write(i2s->regmap, TEGRA20_I2S_FIFO_SCR,
       TEGRA20_I2S_FIFO_SCR_FIFO2_ATN_LVL_FOUR_SLOTS |
       TEGRA20_I2S_FIFO_SCR_FIFO1_ATN_LVL_FOUR_SLOTS);

 return 0;
}
