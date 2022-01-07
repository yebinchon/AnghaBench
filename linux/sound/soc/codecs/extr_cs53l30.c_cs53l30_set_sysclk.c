
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int component; } ;
struct cs53l30_private {int mclk_rate; int regmap; } ;
struct TYPE_2__ {int mclkx; int ratio; int mclkdiv; } ;


 int CS53L30_MCLKCTL ;
 int CS53L30_MCLK_DIV_MASK ;
 int cs53l30_get_mclkx_coeff (unsigned int) ;
 TYPE_1__* cs53l30_mclkx_coeffs ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs53l30_private* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int cs53l30_set_sysclk(struct snd_soc_dai *dai,
         int clk_id, unsigned int freq, int dir)
{
 struct cs53l30_private *priv = snd_soc_component_get_drvdata(dai->component);
 int mclkx_coeff;
 u32 mclk_rate;


 mclkx_coeff = cs53l30_get_mclkx_coeff(freq);
 if (mclkx_coeff < 0)
  return mclkx_coeff;

 mclk_rate = cs53l30_mclkx_coeffs[mclkx_coeff].mclkx /
      cs53l30_mclkx_coeffs[mclkx_coeff].ratio;

 regmap_update_bits(priv->regmap, CS53L30_MCLKCTL,
      CS53L30_MCLK_DIV_MASK,
      cs53l30_mclkx_coeffs[mclkx_coeff].mclkdiv);

 priv->mclk_rate = mclk_rate;

 return 0;
}
