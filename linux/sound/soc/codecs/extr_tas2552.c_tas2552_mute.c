
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int TAS2552_CFG_1 ;
 int TAS2552_MUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int tas2552_mute(struct snd_soc_dai *dai, int mute)
{
 u8 cfg1_reg = 0;
 struct snd_soc_component *component = dai->component;

 if (mute)
  cfg1_reg |= TAS2552_MUTE;

 snd_soc_component_update_bits(component, TAS2552_CFG_1, TAS2552_MUTE, cfg1_reg);

 return 0;
}
