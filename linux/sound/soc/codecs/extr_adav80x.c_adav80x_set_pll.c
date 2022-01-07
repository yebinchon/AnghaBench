
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct adav80x {int pll_src; int regmap; } ;


 int ADAV80X_PLL_CLK_SRC ;
 unsigned int ADAV80X_PLL_CLK_SRC_PLL_MASK (int) ;
 unsigned int ADAV80X_PLL_CLK_SRC_PLL_MCLKI (int) ;
 unsigned int ADAV80X_PLL_CLK_SRC_PLL_XIN (int) ;
 int ADAV80X_PLL_CTRL1 ;
 unsigned int ADAV80X_PLL_CTRL1_PLLDIV ;
 int ADAV80X_PLL_CTRL2 ;
 unsigned int ADAV80X_PLL_CTRL2_DOUB (int) ;
 unsigned int ADAV80X_PLL_CTRL2_FS_32 (int) ;
 unsigned int ADAV80X_PLL_CTRL2_FS_44 (int) ;
 unsigned int ADAV80X_PLL_CTRL2_FS_48 (int) ;
 unsigned int ADAV80X_PLL_CTRL2_PLL_MASK (int) ;



 int EINVAL ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int adav80x_set_pll(struct snd_soc_component *component, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 unsigned int pll_ctrl1 = 0;
 unsigned int pll_ctrl2 = 0;
 unsigned int pll_src;

 switch (source) {
 case 128:
 case 129:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 if (!freq_out)
  return 0;

 switch (freq_in) {
 case 27000000:
  break;
 case 54000000:
  if (source == 129) {
   pll_ctrl1 |= ADAV80X_PLL_CTRL1_PLLDIV;
   break;
  }

 default:
  return -EINVAL;
 }

 if (freq_out > 12288000) {
  pll_ctrl2 |= ADAV80X_PLL_CTRL2_DOUB(pll_id);
  freq_out /= 2;
 }


 switch (freq_out) {
 case 8192000:
  pll_ctrl2 |= ADAV80X_PLL_CTRL2_FS_32(pll_id);
  break;
 case 11289600:
  pll_ctrl2 |= ADAV80X_PLL_CTRL2_FS_44(pll_id);
  break;
 case 12288000:
  pll_ctrl2 |= ADAV80X_PLL_CTRL2_FS_48(pll_id);
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(adav80x->regmap, ADAV80X_PLL_CTRL1,
   ADAV80X_PLL_CTRL1_PLLDIV, pll_ctrl1);
 regmap_update_bits(adav80x->regmap, ADAV80X_PLL_CTRL2,
   ADAV80X_PLL_CTRL2_PLL_MASK(pll_id), pll_ctrl2);

 if (source != adav80x->pll_src) {
  if (source == 130)
   pll_src = ADAV80X_PLL_CLK_SRC_PLL_MCLKI(pll_id);
  else
   pll_src = ADAV80X_PLL_CLK_SRC_PLL_XIN(pll_id);

  regmap_update_bits(adav80x->regmap, ADAV80X_PLL_CLK_SRC,
    ADAV80X_PLL_CLK_SRC_PLL_MASK(pll_id), pll_src);

  adav80x->pll_src = source;

  snd_soc_dapm_sync(dapm);
 }

 return 0;
}
