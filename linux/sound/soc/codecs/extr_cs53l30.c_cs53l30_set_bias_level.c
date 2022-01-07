
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int bias_level; } ;
struct snd_soc_component {int dev; } ;
struct cs53l30_private {int mclk; int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 unsigned int CS53L30_DIGSFT_MASK ;
 int CS53L30_INT_MASK ;
 int CS53L30_IS ;
 int CS53L30_MCLKCTL ;
 unsigned int CS53L30_MCLK_DIS ;
 unsigned int CS53L30_MCLK_DIS_MASK ;
 unsigned int CS53L30_PDN_DONE ;
 unsigned int CS53L30_PDN_LP_MASK ;
 int CS53L30_PDN_POLL_MAX ;
 unsigned int CS53L30_PDN_ULP ;
 unsigned int CS53L30_PDN_ULP_MASK ;
 int CS53L30_PWRCTL ;
 int CS53L30_SFT_RAMP ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cs53l30_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs53l30_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct cs53l30_private *priv = snd_soc_component_get_drvdata(component);
 unsigned int reg;
 int i, inter_max_check, ret;

 switch (level) {
 case 130:
  break;
 case 129:
  if (dapm->bias_level == 128)
   regmap_update_bits(priv->regmap, CS53L30_PWRCTL,
        CS53L30_PDN_LP_MASK, 0);
  break;
 case 128:
  if (dapm->bias_level == 131) {
   ret = clk_prepare_enable(priv->mclk);
   if (ret) {
    dev_err(component->dev,
     "failed to enable MCLK: %d\n", ret);
    return ret;
   }
   regmap_update_bits(priv->regmap, CS53L30_MCLKCTL,
        CS53L30_MCLK_DIS_MASK, 0);
   regmap_update_bits(priv->regmap, CS53L30_PWRCTL,
        CS53L30_PDN_ULP_MASK, 0);
   msleep(50);
  } else {
   regmap_update_bits(priv->regmap, CS53L30_PWRCTL,
        CS53L30_PDN_ULP_MASK,
        CS53L30_PDN_ULP);
  }
  break;
 case 131:
  regmap_update_bits(priv->regmap, CS53L30_INT_MASK,
       CS53L30_PDN_DONE, 0);







  regmap_read(priv->regmap, CS53L30_SFT_RAMP, &reg);
  if (reg & CS53L30_DIGSFT_MASK)
   inter_max_check = CS53L30_PDN_POLL_MAX;
  else
   inter_max_check = 10;

  regmap_update_bits(priv->regmap, CS53L30_PWRCTL,
       CS53L30_PDN_ULP_MASK,
       CS53L30_PDN_ULP);

  msleep(20);

  regmap_read(priv->regmap, CS53L30_IS, &reg);
  for (i = 0; i < inter_max_check; i++) {
   if (inter_max_check < 10) {
    usleep_range(1000, 1100);
    regmap_read(priv->regmap, CS53L30_IS, &reg);
    if (reg & CS53L30_PDN_DONE)
     break;
   } else {
    usleep_range(10000, 10100);
    regmap_read(priv->regmap, CS53L30_IS, &reg);
    if (reg & CS53L30_PDN_DONE)
     break;
   }
  }

  regmap_update_bits(priv->regmap, CS53L30_INT_MASK,
       CS53L30_PDN_DONE, CS53L30_PDN_DONE);
  regmap_update_bits(priv->regmap, CS53L30_MCLKCTL,
       CS53L30_MCLK_DIS_MASK,
       CS53L30_MCLK_DIS);
  clk_disable_unprepare(priv->mclk);
  break;
 }

 return 0;
}
