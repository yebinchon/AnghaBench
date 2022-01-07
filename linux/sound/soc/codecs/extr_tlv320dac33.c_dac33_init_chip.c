
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int chip_power; } ;
struct snd_soc_component {int dummy; } ;


 int DAC33_ANA_VOL_SOFT_STEP_CTRL ;
 int DAC33_DACRATE (int ) ;
 int DAC33_DACSRCL_LEFT ;
 int DAC33_DACSRCR_RIGHT ;
 int DAC33_DAC_CTRL_A ;
 int DAC33_DAC_CTRL_B ;
 int DAC33_DAC_CTRL_C ;
 int DAC33_LDAC_DIG_VOL_CTRL ;
 int DAC33_LDAC_PWR_CTRL ;
 int DAC33_LINEL_TO_LLO_VOL ;
 int DAC33_LINER_TO_RLO_VOL ;
 int DAC33_OUT_AMP_CTRL ;
 int DAC33_RDAC_DIG_VOL_CTRL ;
 int DAC33_RDAC_PWR_CTRL ;
 int DAC33_VOLCLKEN ;
 int dac33_read_reg_cache (struct snd_soc_component*,int ) ;
 int dac33_write (struct snd_soc_component*,int ,int) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dac33_init_chip(struct snd_soc_component *component)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);

 if (unlikely(!dac33->chip_power))
  return;


 dac33_write(component, DAC33_DAC_CTRL_A, DAC33_DACRATE(0));

 dac33_write(component, DAC33_DAC_CTRL_B, DAC33_DACSRCR_RIGHT |
          DAC33_DACSRCL_LEFT);

 dac33_write(component, DAC33_DAC_CTRL_C, 0x00);



 dac33_write(component, DAC33_ANA_VOL_SOFT_STEP_CTRL, DAC33_VOLCLKEN);


 dac33_write(component, DAC33_LDAC_DIG_VOL_CTRL,
      dac33_read_reg_cache(component, DAC33_LDAC_DIG_VOL_CTRL));
 dac33_write(component, DAC33_RDAC_DIG_VOL_CTRL,
      dac33_read_reg_cache(component, DAC33_RDAC_DIG_VOL_CTRL));

 dac33_write(component, DAC33_LINEL_TO_LLO_VOL,
      dac33_read_reg_cache(component, DAC33_LINEL_TO_LLO_VOL));
 dac33_write(component, DAC33_LINER_TO_RLO_VOL,
      dac33_read_reg_cache(component, DAC33_LINER_TO_RLO_VOL));

 dac33_write(component, DAC33_OUT_AMP_CTRL,
      dac33_read_reg_cache(component, DAC33_OUT_AMP_CTRL));

 dac33_write(component, DAC33_LDAC_PWR_CTRL,
      dac33_read_reg_cache(component, DAC33_LDAC_PWR_CTRL));
 dac33_write(component, DAC33_RDAC_PWR_CTRL,
      dac33_read_reg_cache(component, DAC33_RDAC_PWR_CTRL));
}
