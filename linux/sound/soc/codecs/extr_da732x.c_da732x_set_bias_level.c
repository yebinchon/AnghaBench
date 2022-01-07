
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct da732x_priv {int pll_en; int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int DA732X_AUXL_ZC_EN ;
 int DA732X_AUXR_ZC_EN ;
 int DA732X_BIAS_BOOST_100PC ;
 int DA732X_BIAS_BOOST_50PC ;
 int DA732X_BIAS_BOOST_MASK ;
 int DA732X_BIAS_DIS ;
 int DA732X_BIAS_EN ;
 int DA732X_BYPASS_DSP ;
 int DA732X_DIGITAL_EN ;
 int DA732X_DISABLE_CP ;
 int DA732X_ENABLE_CP ;
 int DA732X_HPL_ZC_EN ;
 int DA732X_HPR_ZC_EN ;
 int DA732X_HP_DRIVER_EN ;
 int DA732X_HP_GATE_LOW ;
 int DA732X_HP_LOOP_GAIN_CTRL ;
 int DA732X_HP_OUT_GNDSEL ;
 int DA732X_LIN2_ZC_EN ;
 int DA732X_LIN3_ZC_EN ;
 int DA732X_LIN4_ZC_EN ;
 int DA732X_MIC1_PRE_ZC_EN ;
 int DA732X_MIC1_ZC_EN ;
 int DA732X_MIC2_PRE_ZC_EN ;
 int DA732X_MIC2_ZC_EN ;
 int DA732X_MIC3_PRE_ZC_EN ;
 int DA732X_MIC3_ZC_EN ;
 int DA732X_PC_CLK_EN ;
 int DA732X_PLL_EN ;
 int DA732X_REFBUFX2_EN ;
 int DA732X_REG_BIAS_EN ;
 int DA732X_REG_CLK_EN1 ;
 int DA732X_REG_DATA_ROUTE ;
 int DA732X_REG_DSP_CTRL ;
 int DA732X_REG_HP_LIN1_GNDSEL ;
 int DA732X_REG_INP_ZC_EN ;
 int DA732X_REG_OUT_ZC_EN ;
 int DA732X_REG_PLL_CTRL ;
 int DA732X_REG_REF1 ;
 int DA732X_REG_SPARE1_OUT ;
 int DA732X_STARTUP_DELAY ;
 int DA732X_SYS3_CLK_EN ;
 int DA732X_VMID_FASTCHG ;




 int da732x_hp_dc_offset_cancellation (struct snd_soc_component*) ;
 int da732x_set_charge_pump (struct snd_soc_component*,int ) ;
 int mdelay (int ) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct da732x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int da732x_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct da732x_priv *da732x = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  snd_soc_component_update_bits(component, DA732X_REG_BIAS_EN,
        DA732X_BIAS_BOOST_MASK,
        DA732X_BIAS_BOOST_100PC);
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   snd_soc_component_write(component, DA732X_REG_REF1,
          DA732X_VMID_FASTCHG);
   snd_soc_component_write(component, DA732X_REG_BIAS_EN,
          DA732X_BIAS_EN);

   mdelay(DA732X_STARTUP_DELAY);


   snd_soc_component_write(component, DA732X_REG_REF1,
          DA732X_REFBUFX2_EN);


   snd_soc_component_write(component, DA732X_REG_DATA_ROUTE,
          DA732X_BYPASS_DSP);


   snd_soc_component_write(component, DA732X_REG_DSP_CTRL,
          DA732X_DIGITAL_EN);

   snd_soc_component_write(component, DA732X_REG_SPARE1_OUT,
          DA732X_HP_DRIVER_EN |
          DA732X_HP_GATE_LOW |
          DA732X_HP_LOOP_GAIN_CTRL);
   snd_soc_component_write(component, DA732X_REG_HP_LIN1_GNDSEL,
          DA732X_HP_OUT_GNDSEL);

   da732x_set_charge_pump(component, DA732X_ENABLE_CP);

   snd_soc_component_write(component, DA732X_REG_CLK_EN1,
         DA732X_SYS3_CLK_EN | DA732X_PC_CLK_EN);


   snd_soc_component_write(component, DA732X_REG_INP_ZC_EN,
          DA732X_MIC1_PRE_ZC_EN |
          DA732X_MIC1_ZC_EN |
          DA732X_MIC2_PRE_ZC_EN |
          DA732X_MIC2_ZC_EN |
          DA732X_AUXL_ZC_EN |
          DA732X_AUXR_ZC_EN |
          DA732X_MIC3_PRE_ZC_EN |
          DA732X_MIC3_ZC_EN);
   snd_soc_component_write(component, DA732X_REG_OUT_ZC_EN,
          DA732X_HPL_ZC_EN | DA732X_HPR_ZC_EN |
          DA732X_LIN2_ZC_EN | DA732X_LIN3_ZC_EN |
          DA732X_LIN4_ZC_EN);

   da732x_hp_dc_offset_cancellation(component);

   regcache_cache_only(da732x->regmap, 0);
   regcache_sync(da732x->regmap);
  } else {
   snd_soc_component_update_bits(component, DA732X_REG_BIAS_EN,
         DA732X_BIAS_BOOST_MASK,
         DA732X_BIAS_BOOST_50PC);
   snd_soc_component_update_bits(component, DA732X_REG_PLL_CTRL,
         DA732X_PLL_EN, 0);
   da732x->pll_en = 0;
  }
  break;
 case 131:
  regcache_cache_only(da732x->regmap, 1);
  da732x_set_charge_pump(component, DA732X_DISABLE_CP);
  snd_soc_component_update_bits(component, DA732X_REG_BIAS_EN, DA732X_BIAS_EN,
        DA732X_BIAS_DIS);
  da732x->pll_en = 0;
  break;
 }

 return 0;
}
