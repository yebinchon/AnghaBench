
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct da7219_priv {int supplies; int * mclk; scalar_t__ pdata; int regmap; int pll_lock; int ctrl_lock; struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int DA7219_ADC_L_CTRL ;
 int DA7219_ADC_L_RAMP_EN_MASK ;
 int DA7219_BEEP_CYCLES_MASK ;
 unsigned int DA7219_CHIP_MINOR_MASK ;
 int DA7219_CHIP_REVISION ;
 int DA7219_DAC_L_CTRL ;
 int DA7219_DAC_L_RAMP_EN_MASK ;
 int DA7219_DAC_R_CTRL ;
 int DA7219_DAC_R_RAMP_EN_MASK ;
 int DA7219_HP_L_AMP_MIN_GAIN_EN_MASK ;
 int DA7219_HP_L_AMP_RAMP_EN_MASK ;
 int DA7219_HP_L_CTRL ;
 int DA7219_HP_R_AMP_MIN_GAIN_EN_MASK ;
 int DA7219_HP_R_AMP_RAMP_EN_MASK ;
 int DA7219_HP_R_CTRL ;
 int DA7219_MIXIN_L_AMP_RAMP_EN_MASK ;
 int DA7219_MIXIN_L_CTRL ;
 int DA7219_NUM_SUPPLIES ;
 int DA7219_PC_COUNT ;
 int DA7219_PC_FREERUN_MASK ;
 int DA7219_TONE_GEN_CYCLES ;
 int ENOENT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int da7219_aad_init (struct snd_soc_component*) ;
 scalar_t__ da7219_fw_to_pdata (struct snd_soc_component*) ;
 int da7219_handle_pdata (struct snd_soc_component*) ;
 int da7219_handle_supplies (struct snd_soc_component*) ;
 int da7219_register_dai_clks (struct snd_soc_component*) ;
 int da7219_rev_aa_patch ;
 int dev_err (int ,char*,int) ;
 scalar_t__ dev_get_platdata (int ) ;
 int * devm_clk_get (int ,char*) ;
 int mutex_init (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int da7219_probe(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 unsigned int rev;
 int ret;

 da7219->component = component;
 mutex_init(&da7219->ctrl_lock);
 mutex_init(&da7219->pll_lock);


 ret = da7219_handle_supplies(component);
 if (ret)
  return ret;

 ret = regmap_read(da7219->regmap, DA7219_CHIP_REVISION, &rev);
 if (ret) {
  dev_err(component->dev, "Failed to read chip revision: %d\n", ret);
  goto err_disable_reg;
 }

 switch (rev & DA7219_CHIP_MINOR_MASK) {
 case 0:
  ret = regmap_register_patch(da7219->regmap, da7219_rev_aa_patch,
         ARRAY_SIZE(da7219_rev_aa_patch));
  if (ret) {
   dev_err(component->dev, "Failed to register AA patch: %d\n",
    ret);
   goto err_disable_reg;
  }
  break;
 default:
  break;
 }


 da7219->pdata = dev_get_platdata(component->dev);
 if (!da7219->pdata)
  da7219->pdata = da7219_fw_to_pdata(component);

 da7219_handle_pdata(component);


 da7219->mclk = devm_clk_get(component->dev, "mclk");
 if (IS_ERR(da7219->mclk)) {
  if (PTR_ERR(da7219->mclk) != -ENOENT) {
   ret = PTR_ERR(da7219->mclk);
   goto err_disable_reg;
  } else {
   da7219->mclk = ((void*)0);
  }
 }


 ret = da7219_register_dai_clks(component);
 if (ret)
  return ret;


 snd_soc_component_update_bits(component, DA7219_PC_COUNT, DA7219_PC_FREERUN_MASK,
       DA7219_PC_FREERUN_MASK);


 snd_soc_component_update_bits(component, DA7219_MIXIN_L_CTRL,
       DA7219_MIXIN_L_AMP_RAMP_EN_MASK,
       DA7219_MIXIN_L_AMP_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_ADC_L_CTRL, DA7219_ADC_L_RAMP_EN_MASK,
       DA7219_ADC_L_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_DAC_L_CTRL, DA7219_DAC_L_RAMP_EN_MASK,
       DA7219_DAC_L_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_DAC_R_CTRL, DA7219_DAC_R_RAMP_EN_MASK,
       DA7219_DAC_R_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_HP_L_CTRL,
       DA7219_HP_L_AMP_RAMP_EN_MASK,
       DA7219_HP_L_AMP_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_HP_R_CTRL,
       DA7219_HP_R_AMP_RAMP_EN_MASK,
       DA7219_HP_R_AMP_RAMP_EN_MASK);


 snd_soc_component_update_bits(component, DA7219_HP_L_CTRL,
       DA7219_HP_L_AMP_MIN_GAIN_EN_MASK,
       DA7219_HP_L_AMP_MIN_GAIN_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_HP_R_CTRL,
       DA7219_HP_R_AMP_MIN_GAIN_EN_MASK,
       DA7219_HP_R_AMP_MIN_GAIN_EN_MASK);


 snd_soc_component_write(component, DA7219_TONE_GEN_CYCLES, DA7219_BEEP_CYCLES_MASK);


 ret = da7219_aad_init(component);
 if (ret)
  goto err_disable_reg;

 return 0;

err_disable_reg:
 regulator_bulk_disable(DA7219_NUM_SUPPLIES, da7219->supplies);

 return ret;
}
