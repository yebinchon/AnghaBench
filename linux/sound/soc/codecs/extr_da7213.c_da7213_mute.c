
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int DA7213_DAC_L_CTRL ;
 int DA7213_DAC_R_CTRL ;
 int DA7213_MUTE_EN ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int da7213_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 if (mute) {
  snd_soc_component_update_bits(component, DA7213_DAC_L_CTRL,
        DA7213_MUTE_EN, DA7213_MUTE_EN);
  snd_soc_component_update_bits(component, DA7213_DAC_R_CTRL,
        DA7213_MUTE_EN, DA7213_MUTE_EN);
 } else {
  snd_soc_component_update_bits(component, DA7213_DAC_L_CTRL,
        DA7213_MUTE_EN, 0);
  snd_soc_component_update_bits(component, DA7213_DAC_R_CTRL,
        DA7213_MUTE_EN, 0);
 }

 return 0;
}
