
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_sas_data {int dummy; } ;
struct snd_soc_component {int dev; } ;


 int SPDIF_BIPHASE_ENABLE_MASK ;
 int SPDIF_BIPHASE_IDLE_MASK ;
 int STIH407_AUDIO_DAC_CTRL ;
 int STIH407_AUDIO_GLUE_CTRL ;
 int STIH407_DAC_SOFTMUTE_MASK ;
 int STIH407_DAC_STANDBY_ANA_MASK ;
 int STIH407_DAC_STANDBY_MASK ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int sti_sas_init_sas_registers(struct snd_soc_component *component,
           struct sti_sas_data *data)
{
 int ret;






 ret = snd_soc_component_update_bits(component, STIH407_AUDIO_GLUE_CTRL,
      SPDIF_BIPHASE_ENABLE_MASK, 0);

 if (!ret)

  ret = snd_soc_component_update_bits(component, STIH407_AUDIO_GLUE_CTRL,
       SPDIF_BIPHASE_IDLE_MASK, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to update SPDIF registers\n");
  return ret;
 }



 ret = snd_soc_component_update_bits(component, STIH407_AUDIO_DAC_CTRL,
       STIH407_DAC_STANDBY_MASK,
       STIH407_DAC_STANDBY_MASK);

 if (!ret)
  ret = snd_soc_component_update_bits(component, STIH407_AUDIO_DAC_CTRL,
       STIH407_DAC_STANDBY_ANA_MASK,
       STIH407_DAC_STANDBY_ANA_MASK);
 if (!ret)
  ret = snd_soc_component_update_bits(component, STIH407_AUDIO_DAC_CTRL,
       STIH407_DAC_SOFTMUTE_MASK,
       STIH407_DAC_SOFTMUTE_MASK);

 if (ret < 0) {
  dev_err(component->dev, "Failed to update DAC registers\n");
  return ret;
 }

 return ret;
}
