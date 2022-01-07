
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;


 int DA7219_ADC_L_CTRL ;
 int DA7219_ADC_L_EN_MASK ;
 int DA7219_ADC_L_MUTE_EN_MASK ;
 int DA7219_ALC_AUTO_CALIB_EN_MASK ;
 int DA7219_ALC_CALIB_OVERFLOW_MASK ;
 int DA7219_ALC_CTRL1 ;
 int DA7219_ALC_OFFSET_EN_MASK ;
 int DA7219_ALC_SYNC_MODE_MASK ;
 int DA7219_MIC_1_AMP_EN_MASK ;
 int DA7219_MIC_1_AMP_MUTE_EN_MASK ;
 int DA7219_MIC_1_CTRL ;
 int DA7219_MIXIN_L_AMP_EN_MASK ;
 int DA7219_MIXIN_L_AMP_MUTE_EN_MASK ;
 int DA7219_MIXIN_L_CTRL ;
 int dev_warn (int ,char*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void da7219_alc_calib(struct snd_soc_component *component)
{
 u8 mic_ctrl, mixin_ctrl, adc_ctrl, calib_ctrl;


 mic_ctrl = snd_soc_component_read32(component, DA7219_MIC_1_CTRL);


 mixin_ctrl = snd_soc_component_read32(component, DA7219_MIXIN_L_CTRL);


 adc_ctrl = snd_soc_component_read32(component, DA7219_ADC_L_CTRL);


 snd_soc_component_update_bits(component, DA7219_MIC_1_CTRL, DA7219_MIC_1_AMP_EN_MASK,
       DA7219_MIC_1_AMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7219_MIC_1_CTRL,
       DA7219_MIC_1_AMP_MUTE_EN_MASK,
       DA7219_MIC_1_AMP_MUTE_EN_MASK);


 snd_soc_component_update_bits(component, DA7219_MIXIN_L_CTRL,
       DA7219_MIXIN_L_AMP_EN_MASK |
       DA7219_MIXIN_L_AMP_MUTE_EN_MASK,
       DA7219_MIXIN_L_AMP_EN_MASK);


 snd_soc_component_update_bits(component, DA7219_ADC_L_CTRL,
       DA7219_ADC_L_MUTE_EN_MASK | DA7219_ADC_L_EN_MASK,
       DA7219_ADC_L_EN_MASK);


 snd_soc_component_update_bits(component, DA7219_ALC_CTRL1,
       DA7219_ALC_AUTO_CALIB_EN_MASK,
       DA7219_ALC_AUTO_CALIB_EN_MASK);
 do {
  calib_ctrl = snd_soc_component_read32(component, DA7219_ALC_CTRL1);
 } while (calib_ctrl & DA7219_ALC_AUTO_CALIB_EN_MASK);


 if (calib_ctrl & DA7219_ALC_CALIB_OVERFLOW_MASK) {
  dev_warn(component->dev,
    "ALC auto calibration failed with overflow\n");
  snd_soc_component_update_bits(component, DA7219_ALC_CTRL1,
        DA7219_ALC_OFFSET_EN_MASK |
        DA7219_ALC_SYNC_MODE_MASK, 0);
 } else {

  snd_soc_component_update_bits(component, DA7219_ALC_CTRL1,
        DA7219_ALC_OFFSET_EN_MASK |
        DA7219_ALC_SYNC_MODE_MASK,
        DA7219_ALC_OFFSET_EN_MASK |
        DA7219_ALC_SYNC_MODE_MASK);
 }


 snd_soc_component_write(component, DA7219_ADC_L_CTRL, adc_ctrl);


 snd_soc_component_write(component, DA7219_MIXIN_L_CTRL, mixin_ctrl);


 snd_soc_component_write(component, DA7219_MIC_1_CTRL, mic_ctrl);
}
