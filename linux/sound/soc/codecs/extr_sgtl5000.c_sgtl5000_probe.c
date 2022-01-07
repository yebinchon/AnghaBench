
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_component {int dummy; } ;
struct sgtl5000_priv {int lrclk_strength; int sclk_strength; unsigned int micbias_resistor; unsigned int micbias_voltage; } ;


 unsigned int SGTL5000_ADC_EN ;
 unsigned int SGTL5000_ADC_ZCD_EN ;
 unsigned int SGTL5000_BIAS_R_MASK ;
 unsigned int SGTL5000_BIAS_R_SHIFT ;
 unsigned int SGTL5000_BIAS_VOLT_MASK ;
 unsigned int SGTL5000_BIAS_VOLT_SHIFT ;
 int SGTL5000_CHIP_ADCDAC_CTRL ;
 int SGTL5000_CHIP_ANA_CTRL ;
 int SGTL5000_CHIP_DIG_POWER ;
 int SGTL5000_CHIP_MIC_CTRL ;
 int SGTL5000_CHIP_PAD_STRENGTH ;
 int SGTL5000_CHIP_REF_CTRL ;
 int SGTL5000_CHIP_SHORT_CTRL ;
 unsigned int SGTL5000_DAC_EN ;
 unsigned int SGTL5000_DAC_MUTE_LEFT ;
 unsigned int SGTL5000_DAC_MUTE_RIGHT ;
 unsigned int SGTL5000_DAC_VOL_RAMP_EN ;
 int SGTL5000_DAP_AUDIO_EQ ;
 unsigned int SGTL5000_DAP_SEL_GEQ ;
 unsigned int SGTL5000_HP_ZCD_EN ;
 int SGTL5000_PAD_I2S_LRCLK_SHIFT ;
 int SGTL5000_PAD_I2S_SCLK_SHIFT ;
 unsigned int SGTL5000_SMALL_POP ;
 int sgtl5000_set_power_regs (struct snd_soc_component*) ;
 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int sgtl5000_probe(struct snd_soc_component *component)
{
 int ret;
 u16 reg;
 struct sgtl5000_priv *sgtl5000 = snd_soc_component_get_drvdata(component);
 unsigned int zcd_mask = SGTL5000_HP_ZCD_EN | SGTL5000_ADC_ZCD_EN;


 ret = sgtl5000_set_power_regs(component);
 if (ret)
  goto err;


 snd_soc_component_update_bits(component, SGTL5000_CHIP_REF_CTRL,
    SGTL5000_SMALL_POP, SGTL5000_SMALL_POP);


 snd_soc_component_write(component, SGTL5000_CHIP_SHORT_CTRL, 0);

 snd_soc_component_write(component, SGTL5000_CHIP_DIG_POWER,
   SGTL5000_ADC_EN | SGTL5000_DAC_EN);


 snd_soc_component_write(component, SGTL5000_CHIP_ADCDAC_CTRL,
   SGTL5000_DAC_VOL_RAMP_EN |
   SGTL5000_DAC_MUTE_RIGHT |
   SGTL5000_DAC_MUTE_LEFT);

 reg = ((sgtl5000->lrclk_strength) << SGTL5000_PAD_I2S_LRCLK_SHIFT |
        (sgtl5000->sclk_strength) << SGTL5000_PAD_I2S_SCLK_SHIFT |
        0x1f);
 snd_soc_component_write(component, SGTL5000_CHIP_PAD_STRENGTH, reg);

 snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_CTRL,
  zcd_mask, zcd_mask);

 snd_soc_component_update_bits(component, SGTL5000_CHIP_MIC_CTRL,
   SGTL5000_BIAS_R_MASK,
   sgtl5000->micbias_resistor << SGTL5000_BIAS_R_SHIFT);

 snd_soc_component_update_bits(component, SGTL5000_CHIP_MIC_CTRL,
   SGTL5000_BIAS_VOLT_MASK,
   sgtl5000->micbias_voltage << SGTL5000_BIAS_VOLT_SHIFT);





 snd_soc_component_write(component, SGTL5000_DAP_AUDIO_EQ, SGTL5000_DAP_SEL_GEQ);


 snd_soc_component_update_bits(component, SGTL5000_CHIP_ADCDAC_CTRL,
  SGTL5000_DAC_MUTE_LEFT | SGTL5000_DAC_MUTE_RIGHT, 0);

 return 0;

err:
 return ret;
}
