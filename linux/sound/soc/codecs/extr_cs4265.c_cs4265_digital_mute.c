
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS4265_DAC_CTL ;
 int CS4265_DAC_CTL_MUTE ;
 int CS4265_SPDIF_CTL2 ;
 int CS4265_SPDIF_CTL2_MUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs4265_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 if (mute) {
  snd_soc_component_update_bits(component, CS4265_DAC_CTL,
   CS4265_DAC_CTL_MUTE,
   CS4265_DAC_CTL_MUTE);
  snd_soc_component_update_bits(component, CS4265_SPDIF_CTL2,
   CS4265_SPDIF_CTL2_MUTE,
   CS4265_SPDIF_CTL2_MUTE);
 } else {
  snd_soc_component_update_bits(component, CS4265_DAC_CTL,
   CS4265_DAC_CTL_MUTE,
   0);
  snd_soc_component_update_bits(component, CS4265_SPDIF_CTL2,
   CS4265_SPDIF_CTL2_MUTE,
   0);
 }
 return 0;
}
