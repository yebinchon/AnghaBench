
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct nau8825 {int regmap; } ;
struct TYPE_4__ {unsigned int clk_src; } ;
struct TYPE_3__ {unsigned int clk_src; } ;


 int EINVAL ;
 int HZ ;
 unsigned int NAU8825_ADC_SYNC_DOWN_MASK ;
 int NAU8825_CLK_ADC_SRC_MASK ;
 unsigned int NAU8825_CLK_ADC_SRC_SFT ;
 int NAU8825_CLK_DAC_SRC_MASK ;
 unsigned int NAU8825_CLK_DAC_SRC_SFT ;
 unsigned int NAU8825_DAC_OVERSAMPLE_MASK ;
 int NAU8825_I2S_BLK_DIV_MASK ;
 unsigned int NAU8825_I2S_DL_16 ;
 unsigned int NAU8825_I2S_DL_20 ;
 unsigned int NAU8825_I2S_DL_24 ;
 unsigned int NAU8825_I2S_DL_32 ;
 int NAU8825_I2S_DL_MASK ;
 int NAU8825_I2S_LRC_DIV_MASK ;
 unsigned int NAU8825_I2S_LRC_DIV_SFT ;
 unsigned int NAU8825_I2S_MS_MASTER ;
 int NAU8825_REG_ADC_RATE ;
 int NAU8825_REG_CLK_DIVIDER ;
 int NAU8825_REG_DAC_CTRL1 ;
 int NAU8825_REG_I2S_PCM_CTRL1 ;
 int NAU8825_REG_I2S_PCM_CTRL2 ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ nau8825_clock_check (struct nau8825*,int ,unsigned int,unsigned int) ;
 int nau8825_sema_acquire (struct nau8825*,int) ;
 int nau8825_sema_release (struct nau8825*) ;
 TYPE_2__* osr_adc_sel ;
 TYPE_1__* osr_dac_sel ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct nau8825* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_params_to_bclk (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int nau8825_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct nau8825 *nau8825 = snd_soc_component_get_drvdata(component);
 unsigned int val_len = 0, osr, ctrl_val, bclk_fs, bclk_div;

 nau8825_sema_acquire(nau8825, 3 * HZ);







 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  regmap_read(nau8825->regmap, NAU8825_REG_DAC_CTRL1, &osr);
  osr &= NAU8825_DAC_OVERSAMPLE_MASK;
  if (nau8825_clock_check(nau8825, substream->stream,
   params_rate(params), osr)) {
   nau8825_sema_release(nau8825);
   return -EINVAL;
  }
  regmap_update_bits(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
   NAU8825_CLK_DAC_SRC_MASK,
   osr_dac_sel[osr].clk_src << NAU8825_CLK_DAC_SRC_SFT);
 } else {
  regmap_read(nau8825->regmap, NAU8825_REG_ADC_RATE, &osr);
  osr &= NAU8825_ADC_SYNC_DOWN_MASK;
  if (nau8825_clock_check(nau8825, substream->stream,
   params_rate(params), osr)) {
   nau8825_sema_release(nau8825);
   return -EINVAL;
  }
  regmap_update_bits(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
   NAU8825_CLK_ADC_SRC_MASK,
   osr_adc_sel[osr].clk_src << NAU8825_CLK_ADC_SRC_SFT);
 }


 regmap_read(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2, &ctrl_val);
 if (ctrl_val & NAU8825_I2S_MS_MASTER) {

  bclk_fs = snd_soc_params_to_bclk(params) / params_rate(params);
  if (bclk_fs <= 32)
   bclk_div = 2;
  else if (bclk_fs <= 64)
   bclk_div = 1;
  else if (bclk_fs <= 128)
   bclk_div = 0;
  else {
   nau8825_sema_release(nau8825);
   return -EINVAL;
  }
  regmap_update_bits(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2,
   NAU8825_I2S_LRC_DIV_MASK | NAU8825_I2S_BLK_DIV_MASK,
   ((bclk_div + 1) << NAU8825_I2S_LRC_DIV_SFT) | bclk_div);
 }

 switch (params_width(params)) {
 case 16:
  val_len |= NAU8825_I2S_DL_16;
  break;
 case 20:
  val_len |= NAU8825_I2S_DL_20;
  break;
 case 24:
  val_len |= NAU8825_I2S_DL_24;
  break;
 case 32:
  val_len |= NAU8825_I2S_DL_32;
  break;
 default:
  nau8825_sema_release(nau8825);
  return -EINVAL;
 }

 regmap_update_bits(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL1,
  NAU8825_I2S_DL_MASK, val_len);


 nau8825_sema_release(nau8825);

 return 0;
}
