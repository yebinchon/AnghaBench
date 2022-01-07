
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS4341_REG_VOLA ;
 int CS4341_REG_VOLB ;
 int CS4341_VOLX_MUTE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs4341_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 int ret;

 ret = snd_soc_component_update_bits(component, CS4341_REG_VOLA,
         CS4341_VOLX_MUTE,
         mute ? CS4341_VOLX_MUTE : 0);
 if (ret < 0)
  return ret;

 return snd_soc_component_update_bits(component, CS4341_REG_VOLB,
          CS4341_VOLX_MUTE,
          mute ? CS4341_VOLX_MUTE : 0);
}
