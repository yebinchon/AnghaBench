
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct max98925_priv {int ch_size; int sysclk; int regmap; struct snd_soc_component* component; } ;


 int EINVAL ;
 unsigned int M98925_DAI_BSEL_32 ;
 unsigned int M98925_DAI_BSEL_48 ;
 unsigned int M98925_DAI_BSEL_64 ;
 int M98925_DAI_BSEL_MASK ;
 int M98925_DAI_SR_MASK ;
 unsigned int M98925_DAI_SR_SHIFT ;
 int M98925_MDLL_MULT_MASK ;
 unsigned int M98925_MDLL_MULT_MCLKx16 ;
 unsigned int M98925_MDLL_MULT_MCLKx8 ;
 unsigned int M98925_MDLL_MULT_SHIFT ;
 int MAX98925_DAI_CLK_DIV_M_LSBS ;
 int MAX98925_DAI_CLK_DIV_M_MSBS ;
 int MAX98925_DAI_CLK_DIV_N_LSBS ;
 int MAX98925_DAI_CLK_DIV_N_MSBS ;
 int MAX98925_DAI_CLK_MODE1 ;
 int MAX98925_DAI_CLK_MODE2 ;
 int dev_info (int ,char*,int) ;
 scalar_t__ max98925_rate_value (struct snd_soc_component*,int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int max98925_set_clock(struct max98925_priv *max98925,
  struct snd_pcm_hw_params *params)
{
 unsigned int dai_sr = 0, clock, mdll, n, m;
 struct snd_soc_component *component = max98925->component;
 int rate = params_rate(params);

 int blr_clk_ratio = params_channels(params) * max98925->ch_size;

 switch (blr_clk_ratio) {
 case 32:
  regmap_update_bits(max98925->regmap,
   MAX98925_DAI_CLK_MODE2,
   M98925_DAI_BSEL_MASK, M98925_DAI_BSEL_32);
  break;
 case 48:
  regmap_update_bits(max98925->regmap,
   MAX98925_DAI_CLK_MODE2,
   M98925_DAI_BSEL_MASK, M98925_DAI_BSEL_48);
  break;
 case 64:
  regmap_update_bits(max98925->regmap,
   MAX98925_DAI_CLK_MODE2,
   M98925_DAI_BSEL_MASK, M98925_DAI_BSEL_64);
  break;
 default:
  return -EINVAL;
 }

 switch (max98925->sysclk) {
 case 6000000:
  clock = 0;
  mdll = M98925_MDLL_MULT_MCLKx16;
  break;
 case 11289600:
  clock = 1;
  mdll = M98925_MDLL_MULT_MCLKx8;
  break;
 case 12000000:
  clock = 0;
  mdll = M98925_MDLL_MULT_MCLKx8;
  break;
 case 12288000:
  clock = 2;
  mdll = M98925_MDLL_MULT_MCLKx8;
  break;
 default:
  dev_info(max98925->component->dev, "unsupported sysclk %d\n",
     max98925->sysclk);
  return -EINVAL;
 }

 if (max98925_rate_value(component, rate, clock, &dai_sr, &n, &m))
  return -EINVAL;


 regmap_update_bits(max98925->regmap,
   MAX98925_DAI_CLK_MODE2,
   M98925_DAI_SR_MASK, dai_sr << M98925_DAI_SR_SHIFT);

 regmap_write(max98925->regmap,
  MAX98925_DAI_CLK_DIV_M_MSBS, m >> 8);
 regmap_write(max98925->regmap,
  MAX98925_DAI_CLK_DIV_M_LSBS, m & 0xFF);

 regmap_write(max98925->regmap,
  MAX98925_DAI_CLK_DIV_N_MSBS, n >> 8);
 regmap_write(max98925->regmap,
  MAX98925_DAI_CLK_DIV_N_LSBS, n & 0xFF);

 regmap_update_bits(max98925->regmap, MAX98925_DAI_CLK_MODE1,
   M98925_MDLL_MULT_MASK, mdll << M98925_MDLL_MULT_SHIFT);
 return 0;
}
