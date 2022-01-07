
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS42L52_PB_CTL1 ;
 int CS42L52_PB_CTL1_MUTE ;
 int CS42L52_PB_CTL1_MUTE_MASK ;
 int CS42L52_PB_CTL1_UNMUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs42l52_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 if (mute)
  snd_soc_component_update_bits(component, CS42L52_PB_CTL1,
        CS42L52_PB_CTL1_MUTE_MASK,
    CS42L52_PB_CTL1_MUTE);
 else
  snd_soc_component_update_bits(component, CS42L52_PB_CTL1,
        CS42L52_PB_CTL1_MUTE_MASK,
    CS42L52_PB_CTL1_UNMUTE);

 return 0;
}
