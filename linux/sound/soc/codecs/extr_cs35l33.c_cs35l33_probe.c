
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int boost_ctl; int amp_drv_sel; int ramp_rate; int imon_adc_scale; scalar_t__ boost_ipk; } ;
struct cs35l33_private {int regmap; TYPE_1__ pdata; scalar_t__ enable_soft_ramp; struct snd_soc_component* component; } ;


 int CS35L33_ADC_CTL ;
 int CS35L33_ALIVE_WD_DIS ;
 int CS35L33_ALIVE_WD_DIS2 ;
 int CS35L33_AMP_DRV_SEL_MASK ;
 int CS35L33_AMP_DRV_SEL_SHIFT ;
 int CS35L33_BST_CTL1 ;
 int CS35L33_BST_CTL2 ;
 int CS35L33_BST_CTL_MASK ;
 int CS35L33_CLASSD_CTL ;
 int CS35L33_DAC_CTL ;
 int CS35L33_DIGSFT ;
 int CS35L33_DSR_RATE ;
 int CS35L33_IMON_SCALE ;
 int CS35L33_INT_MASK_1 ;
 int CS35L33_M_AMP_SHORT ;
 int CS35L33_M_CAL_ERR ;
 int CS35L33_M_OTE ;
 int CS35L33_M_OTW ;
 int CS35L33_PROTECT_CTL ;
 int cs35l33_set_bst_ipk (struct snd_soc_component*,scalar_t__) ;
 int cs35l33_set_hg_data (struct snd_soc_component*,TYPE_1__*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int cs35l33_probe(struct snd_soc_component *component)
{
 struct cs35l33_private *cs35l33 = snd_soc_component_get_drvdata(component);

 cs35l33->component = component;
 pm_runtime_get_sync(component->dev);

 regmap_update_bits(cs35l33->regmap, CS35L33_PROTECT_CTL,
  CS35L33_ALIVE_WD_DIS, 0x8);
 regmap_update_bits(cs35l33->regmap, CS35L33_BST_CTL2,
    CS35L33_ALIVE_WD_DIS2,
    CS35L33_ALIVE_WD_DIS2);


 regmap_update_bits(cs35l33->regmap, CS35L33_BST_CTL1,
  CS35L33_BST_CTL_MASK, cs35l33->pdata.boost_ctl);
 regmap_update_bits(cs35l33->regmap, CS35L33_CLASSD_CTL,
  CS35L33_AMP_DRV_SEL_MASK,
  cs35l33->pdata.amp_drv_sel << CS35L33_AMP_DRV_SEL_SHIFT);

 if (cs35l33->pdata.boost_ipk)
  cs35l33_set_bst_ipk(component, cs35l33->pdata.boost_ipk);

 if (cs35l33->enable_soft_ramp) {
  snd_soc_component_update_bits(component, CS35L33_DAC_CTL,
   CS35L33_DIGSFT, CS35L33_DIGSFT);
  snd_soc_component_update_bits(component, CS35L33_DAC_CTL,
   CS35L33_DSR_RATE, cs35l33->pdata.ramp_rate);
 } else {
  snd_soc_component_update_bits(component, CS35L33_DAC_CTL,
   CS35L33_DIGSFT, 0);
 }


 if (cs35l33->pdata.imon_adc_scale != 0x8)
  snd_soc_component_update_bits(component, CS35L33_ADC_CTL,
   CS35L33_IMON_SCALE, cs35l33->pdata.imon_adc_scale);

 cs35l33_set_hg_data(component, &(cs35l33->pdata));





 regmap_update_bits(cs35l33->regmap, CS35L33_INT_MASK_1,
  CS35L33_M_OTE | CS35L33_M_OTW | CS35L33_M_AMP_SHORT |
  CS35L33_M_CAL_ERR, 0);

 pm_runtime_put_sync(component->dev);

 return 0;
}
