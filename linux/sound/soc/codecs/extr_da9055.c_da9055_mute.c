
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int DA9055_DAC_L_CTRL ;
 int DA9055_DAC_L_MUTE_EN ;
 int DA9055_DAC_R_CTRL ;
 int DA9055_DAC_R_MUTE_EN ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int da9055_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 if (mute) {
  snd_soc_component_update_bits(component, DA9055_DAC_L_CTRL,
        DA9055_DAC_L_MUTE_EN, DA9055_DAC_L_MUTE_EN);
  snd_soc_component_update_bits(component, DA9055_DAC_R_CTRL,
        DA9055_DAC_R_MUTE_EN, DA9055_DAC_R_MUTE_EN);
 } else {
  snd_soc_component_update_bits(component, DA9055_DAC_L_CTRL,
        DA9055_DAC_L_MUTE_EN, 0);
  snd_soc_component_update_bits(component, DA9055_DAC_R_CTRL,
        DA9055_DAC_R_MUTE_EN, 0);
 }

 return 0;
}
