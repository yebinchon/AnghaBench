
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;
struct da7213_priv {int alc_calib_auto; int * mclk; struct da7213_platform_data* pdata; } ;
struct da7213_platform_data {int micbias1_lvl; int micbias2_lvl; int dmic_data_sel; int dmic_samplephase; int dmic_clk_rate; } ;


 int DA7213_ADC_L_CTRL ;
 int DA7213_ADC_R_CTRL ;
 int DA7213_ALC_CALIB_MODE_MAN ;
 int DA7213_ALC_CTRL1 ;
 int DA7213_AUX_L_CTRL ;
 int DA7213_AUX_R_CTRL ;
 int DA7213_DAC_L_CTRL ;
 int DA7213_DAC_R_CTRL ;


 int DA7213_DMIC_CLK_RATE_MASK ;
 int DA7213_DMIC_CLK_RATE_SHIFT ;


 int DA7213_DMIC_DATA_SEL_MASK ;
 int DA7213_DMIC_DATA_SEL_SHIFT ;
 int DA7213_DMIC_SAMPLEPHASE_MASK ;
 int DA7213_DMIC_SAMPLEPHASE_SHIFT ;


 int DA7213_GAIN_RAMP_EN ;
 int DA7213_HP_AMP_OE ;
 int DA7213_HP_L_CTRL ;
 int DA7213_HP_R_CTRL ;
 int DA7213_LINE_AMP_OE ;
 int DA7213_LINE_CTRL ;
 int DA7213_MICBIAS1_LEVEL_MASK ;
 int DA7213_MICBIAS1_LEVEL_SHIFT ;
 int DA7213_MICBIAS2_LEVEL_MASK ;
 int DA7213_MICBIAS2_LEVEL_SHIFT ;




 int DA7213_MICBIAS_CTRL ;
 int DA7213_MIC_CONFIG ;
 int DA7213_MIXIN_L_CTRL ;
 int DA7213_MIXIN_MIX_EN ;
 int DA7213_MIXIN_R_CTRL ;
 int DA7213_MIXOUT_L_CTRL ;
 int DA7213_MIXOUT_MIX_EN ;
 int DA7213_MIXOUT_R_CTRL ;
 int DA7213_PC_COUNT ;
 int DA7213_PC_FREERUN_MASK ;
 int ENOENT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 struct da7213_platform_data* da7213_fw_to_pdata (struct snd_soc_component*) ;
 struct da7213_platform_data* dev_get_platdata (int ) ;
 int * devm_clk_get (int ,char*) ;
 struct da7213_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int da7213_probe(struct snd_soc_component *component)
{
 struct da7213_priv *da7213 = snd_soc_component_get_drvdata(component);


 snd_soc_component_update_bits(component, DA7213_ALC_CTRL1,
       DA7213_ALC_CALIB_MODE_MAN, 0);
 da7213->alc_calib_auto = 1;


 snd_soc_component_update_bits(component, DA7213_PC_COUNT, DA7213_PC_FREERUN_MASK,
       DA7213_PC_FREERUN_MASK);


 snd_soc_component_update_bits(component, DA7213_AUX_L_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_AUX_R_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_MIXIN_L_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_MIXIN_R_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_ADC_L_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_ADC_R_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_DAC_L_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_DAC_R_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_HP_L_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_HP_R_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_LINE_CTRL,
       DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
 snd_soc_component_update_bits(component, DA7213_MIXIN_L_CTRL,
       DA7213_MIXIN_MIX_EN, DA7213_MIXIN_MIX_EN);
 snd_soc_component_update_bits(component, DA7213_MIXIN_R_CTRL,
       DA7213_MIXIN_MIX_EN, DA7213_MIXIN_MIX_EN);

 snd_soc_component_update_bits(component, DA7213_MIXOUT_L_CTRL,
       DA7213_MIXOUT_MIX_EN, DA7213_MIXOUT_MIX_EN);
 snd_soc_component_update_bits(component, DA7213_MIXOUT_R_CTRL,
       DA7213_MIXOUT_MIX_EN, DA7213_MIXOUT_MIX_EN);

 snd_soc_component_update_bits(component, DA7213_HP_L_CTRL,
       DA7213_HP_AMP_OE, DA7213_HP_AMP_OE);
 snd_soc_component_update_bits(component, DA7213_HP_R_CTRL,
       DA7213_HP_AMP_OE, DA7213_HP_AMP_OE);

 snd_soc_component_update_bits(component, DA7213_LINE_CTRL,
       DA7213_LINE_AMP_OE, DA7213_LINE_AMP_OE);


 da7213->pdata = dev_get_platdata(component->dev);
 if (!da7213->pdata)
  da7213->pdata = da7213_fw_to_pdata(component);


 if (da7213->pdata) {
  struct da7213_platform_data *pdata = da7213->pdata;
  u8 micbias_lvl = 0, dmic_cfg = 0;


  switch (pdata->micbias1_lvl) {
  case 131:
  case 130:
  case 129:
  case 128:
   micbias_lvl |= (pdata->micbias1_lvl <<
     DA7213_MICBIAS1_LEVEL_SHIFT);
   break;
  }
  switch (pdata->micbias2_lvl) {
  case 131:
  case 130:
  case 129:
  case 128:
   micbias_lvl |= (pdata->micbias2_lvl <<
      DA7213_MICBIAS2_LEVEL_SHIFT);
   break;
  }
  snd_soc_component_update_bits(component, DA7213_MICBIAS_CTRL,
        DA7213_MICBIAS1_LEVEL_MASK |
        DA7213_MICBIAS2_LEVEL_MASK, micbias_lvl);


  switch (pdata->dmic_data_sel) {
  case 135:
  case 134:
   dmic_cfg |= (pdata->dmic_data_sel <<
         DA7213_DMIC_DATA_SEL_SHIFT);
   break;
  }
  switch (pdata->dmic_samplephase) {
  case 132:
  case 133:
   dmic_cfg |= (pdata->dmic_samplephase <<
         DA7213_DMIC_SAMPLEPHASE_SHIFT);
   break;
  }
  switch (pdata->dmic_clk_rate) {
  case 136:
  case 137:
   dmic_cfg |= (pdata->dmic_clk_rate <<
         DA7213_DMIC_CLK_RATE_SHIFT);
   break;
  }
  snd_soc_component_update_bits(component, DA7213_MIC_CONFIG,
        DA7213_DMIC_DATA_SEL_MASK |
        DA7213_DMIC_SAMPLEPHASE_MASK |
        DA7213_DMIC_CLK_RATE_MASK, dmic_cfg);
 }


 da7213->mclk = devm_clk_get(component->dev, "mclk");
 if (IS_ERR(da7213->mclk)) {
  if (PTR_ERR(da7213->mclk) != -ENOENT)
   return PTR_ERR(da7213->mclk);
  else
   da7213->mclk = ((void*)0);
 }

 return 0;
}
