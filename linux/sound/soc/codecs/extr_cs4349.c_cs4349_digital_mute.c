
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS4349_MUTE ;
 int MUTE_AB_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int cs4349_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 int reg;

 reg = 0;
 if (mute)
  reg = MUTE_AB_MASK;

 return snd_soc_component_update_bits(component, CS4349_MUTE, MUTE_AB_MASK, reg);
}
