
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int mclk_rate; int fs_length; int regmap; int pdata; int sai_ck; int sai_mclk; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SAI_XCR1_OSR ;
 int STM_SAI_CR1_REGX ;
 scalar_t__ STM_SAI_IS_F4 (int ) ;
 scalar_t__ STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stm32_sai_get_clk_div (struct stm32_sai_sub_data*,int,int) ;
 int stm32_sai_set_clk_div (struct stm32_sai_sub_data*,int) ;
 int stm32_sai_set_parent_clock (struct stm32_sai_sub_data*,unsigned int) ;

__attribute__((used)) static int stm32_sai_configure_clock(struct snd_soc_dai *cpu_dai,
         struct snd_pcm_hw_params *params)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int div = 0, cr1 = 0;
 int sai_clk_rate, mclk_ratio, den;
 unsigned int rate = params_rate(params);
 int ret;

 if (!sai->sai_mclk) {
  ret = stm32_sai_set_parent_clock(sai, rate);
  if (ret)
   return ret;
 }
 sai_clk_rate = clk_get_rate(sai->sai_ck);

 if (STM_SAI_IS_F4(sai->pdata)) {







  if (!sai->mclk_rate)
   return 0;

  if (2 * sai_clk_rate >= 3 * sai->mclk_rate) {
   div = stm32_sai_get_clk_div(sai, sai_clk_rate,
          2 * sai->mclk_rate);
   if (div < 0)
    return div;
  }
 } else {
  if (STM_SAI_PROTOCOL_IS_SPDIF(sai)) {
   div = stm32_sai_get_clk_div(sai, sai_clk_rate,
          rate * 128);
   if (div < 0)
    return div;
  } else {
   if (sai->mclk_rate) {
    mclk_ratio = sai->mclk_rate / rate;
    if (mclk_ratio == 512) {
     cr1 = SAI_XCR1_OSR;
    } else if (mclk_ratio != 256) {
     dev_err(cpu_dai->dev,
      "Wrong mclk ratio %d\n",
      mclk_ratio);
     return -EINVAL;
    }

    regmap_update_bits(sai->regmap,
         STM_SAI_CR1_REGX,
         SAI_XCR1_OSR, cr1);

    div = stm32_sai_get_clk_div(sai, sai_clk_rate,
           sai->mclk_rate);
    if (div < 0)
     return div;
   } else {

    den = sai->fs_length * params_rate(params);
    div = stm32_sai_get_clk_div(sai, sai_clk_rate,
           den);
    if (div < 0)
     return div;
   }
  }
 }

 return stm32_sai_set_clk_div(sai, div);
}
