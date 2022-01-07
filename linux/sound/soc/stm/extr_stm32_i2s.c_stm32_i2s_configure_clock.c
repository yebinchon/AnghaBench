
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_i2s_data {unsigned int mclk_rate; int fmt; int regmap; int i2sclk; int x8kclk; int x11kclk; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned long,unsigned int) ;
 int EINVAL ;
 int I2S_CFG2_AFCNTR ;
 int I2S_CGFR_CHLEN ;
 int I2S_CGFR_I2SDIV_MASK ;
 unsigned int I2S_CGFR_I2SDIV_MAX ;
 int I2S_CGFR_I2SDIV_SET (unsigned int) ;
 int I2S_CGFR_ODD ;
 int I2S_CGFR_ODD_SHIFT ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;
 int STM32_I2S_CFG2_REG ;
 int STM32_I2S_CGFR_REG ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_parent (int ,int ) ;
 int dev_dbg (int ,char*,unsigned int,int,...) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct stm32_i2s_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_i2s_configure_clock(struct snd_soc_dai *cpu_dai,
         struct snd_pcm_hw_params *params)
{
 struct stm32_i2s_data *i2s = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long i2s_clock_rate;
 unsigned int tmp, div, real_div, nb_bits, frame_len;
 unsigned int rate = params_rate(params);
 int ret;
 u32 cgfr, cgfr_mask;
 bool odd;

 if (!(rate % 11025))
  clk_set_parent(i2s->i2sclk, i2s->x11kclk);
 else
  clk_set_parent(i2s->i2sclk, i2s->x8kclk);
 i2s_clock_rate = clk_get_rate(i2s->i2sclk);
 if (i2s->mclk_rate) {
  tmp = DIV_ROUND_CLOSEST(i2s_clock_rate, i2s->mclk_rate);
 } else {
  frame_len = 32;
  if ((i2s->fmt & SND_SOC_DAIFMT_FORMAT_MASK) ==
      SND_SOC_DAIFMT_DSP_A)
   frame_len = 16;


  ret = regmap_read(i2s->regmap, STM32_I2S_CGFR_REG, &cgfr);
  if (ret < 0)
   return ret;

  nb_bits = frame_len * ((cgfr & I2S_CGFR_CHLEN) + 1);
  tmp = DIV_ROUND_CLOSEST(i2s_clock_rate, (nb_bits * rate));
 }


 odd = tmp & 0x1;


 div = tmp >> 1;

 cgfr = I2S_CGFR_I2SDIV_SET(div) | (odd << I2S_CGFR_ODD_SHIFT);
 cgfr_mask = I2S_CGFR_I2SDIV_MASK | I2S_CGFR_ODD;

 real_div = ((2 * div) + odd);
 dev_dbg(cpu_dai->dev, "I2S clk: %ld, SCLK: %d\n",
  i2s_clock_rate, rate);
 dev_dbg(cpu_dai->dev, "Divider: 2*%d(div)+%d(odd) = %d\n",
  div, odd, real_div);

 if (((div == 1) && odd) || (div > I2S_CGFR_I2SDIV_MAX)) {
  dev_err(cpu_dai->dev, "Wrong divider setting\n");
  return -EINVAL;
 }

 if (!div && !odd)
  dev_warn(cpu_dai->dev, "real divider forced to 1\n");

 ret = regmap_update_bits(i2s->regmap, STM32_I2S_CGFR_REG,
     cgfr_mask, cgfr);
 if (ret < 0)
  return ret;


 return regmap_update_bits(i2s->regmap, STM32_I2S_CFG2_REG,
      I2S_CFG2_AFCNTR, I2S_CFG2_AFCNTR);
}
